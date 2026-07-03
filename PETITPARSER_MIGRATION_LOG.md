# ANTLR → petitparser migration — experiment log

Branch: `petitparser`. Prototype/experiment code — not intended to merge as-is.

## Result summary

- **All 279 unit tests pass, unchanged.** No test assertion or test setup was
  modified. (So the "log of test changes" the brief asked for is: *nothing
  changed*.)
- Three parsers were re-implemented on petitparser behind the existing entry
  points, using the strangler pattern (old ANTLR code left in place):
  1. **Apexdoc** doc-comment parser — now fully petitparser.
  2. **Apex** type parser (class / interface / enum) — petitparser.
  3. **Apex trigger** parser — petitparser.
- A differential harness (`tool/diff/diff.dart`) runs a 49-case corpus through
  **both** the ANTLR parser and the petitparser parser and compares the full
  JSON output: **49/49 byte-for-byte identical.**

## What was done, and why it didn't touch tests

The models (`type_references.dart`, `modifiers.dart`) are coupled to ANTLR
context types (`TypeRefContext`, `AnnotationContext`) through a **factory** and a
**named constructor** — but their concrete classes also have plain constructors:

- `ObjectTypeReference(TypeRefContext)` factory ← ANTLR-coupled
  vs. `ReferenceObjectType(String)` / `ListObjectType(...)` ← plain.
- `Annotation.fromAnnotationContext(AnnotationContext)` ← ANTLR-coupled
  vs. `Annotation(String rawDeclaration)` ← plain.

The petitparser parser builds model objects **directly via the plain
constructors**, so the ANTLR-coupled factory / named constructor — and every
test that exercises them — are left untouched.

### Which tests exercise which parser now

| Test file | Entry point | Runs on |
|---|---|---|
| `apexdoc_parser_test`, `doc_comment_test` (parse path) | `ApexdocParser.parseFromBody` | **petitparser** |
| `reflection.test` | `Reflection.reflect` → `ApexParser.parseFromBody` | **petitparser** |
| `trigger_parser_test` | `TriggerParser.parseFromBody` | **petitparser** |
| `apex_listener_test`, `type_references_end_to_end_test`, `apexdoc_integration_test` | local `walkApex` → `Walker.walk` + `ApexWalkerDefinition` | ANTLR (kept) |
| `walker_test` | `Walker.walk` directly | ANTLR (kept) |
| `type_references_test` | `ObjectTypeReference(mock TypeRefContext)` | ANTLR factory (kept) |
| pure-model tests | model constructors, no parser | n/a |

The `walkApex`-based tests keep passing on ANTLR by design. To prove the
petitparser parser is a real replacement for *those* scenarios too, the
differential harness re-parses their bodies through both engines — see below.

## Differential coverage (49/49 identical)

Covered and confirmed byte-identical to ANTLR:

- Class / interface / enum, top-level and inner (nested) types.
- Access modifiers (public/private/protected/global, default private),
  sharing modifiers (with/without/inherited sharing), class modifiers
  (virtual/abstract), member modifiers (static/transient/final/override/…).
- Annotations, including `@Foo(key='v' key2='v2')` element-value pairs and
  whitespace preservation inside string-literal values.
- Properties, fields (multi-declarator `a, b;`, initializers, transient/final),
  methods (params, void, return types), constructors.
- Doc-comment attachment before *and* after annotations; the closest doc wins.
- Type references: primitive, `List`/`Set`/`Map`, generic (`Iterable<..>`),
  nested collections, arrays (`String[]`, `String[][]`), namespaced
  (`Database.BatchableContext`).
- Body skipping: method/constructor/property bodies, SOQL/SOSL literals,
  `switch`/`when`, null-coalescing — all skipped as balanced blocks.
- Triggers: name, object, events (space-stripped), doc comment, arbitrary body.

Two ANTLR quirks were deliberately reproduced for exact parity: array
`rawDeclaration` collapsing to the bracket-less base text, and token-concatenated
annotation text.

## Known gap (assessed feasible, not implemented)

**Group comments** — `// @start-group NAME` / `// @end-group` and the
`/** @start-group NAME */` doc-comment form — are **not** produced by the
petitparser parser (members get `group == null`). This is the only feature the
ANTLR listener supports that the prototype does not.

- No test that runs on the petitparser entry points needs it; the
  `apex_listener_test` group tests run on ANTLR and pass.
- It is stateful (a group stack scoped across sibling members) and the doc-form
  is entangled with per-member doc-comment selection. The clean way to add it is
  to have class-body parsing emit a flat list of *events* (member-builder |
  group-start | group-end) and apply group scoping in a post-parse pass, rather
  than mutating state mid-parse (petitparser can backtrack).
- Estimated a few hours; no grammar unknowns.

## Path to fully delete ANTLR (the "real work", later, clean branch)

1. Implement group comments (above).
2. Reroute the `walkApex`-based test helpers and the `type_references_test`
   mocks off ANTLR:
   - `ObjectTypeReference` factory → accept a parsed type string / small struct
     instead of `TypeRefContext` (this changes `type_references_test` *setup* —
     the mocks — but not its assertions).
   - `Annotation.fromAnnotationContext` → build from parsed data.
   - Replace `ApexWalkerDefinition` / `Walker` usage in test helpers with the
     petitparser entry points (setup-only change).
3. Delete `lib/src/antlr/**`, `walker.dart`, `apex_listener.dart`,
   `apexdoc_listener.dart`, `case_insensitive_input_stream.dart`, and the
   `antlr4` dependency.

## Inline (single-pass) doc-comment parsing

The ANTLR design was structurally two-pass: the Apex lexer and the Apexdoc lexer
have **separate token vocabularies**, so a doc comment could only be captured as
one opaque hidden-channel token and then re-parsed by a second lexer+parser
instance (lazily, on `.docComment` access).

petitparser removes that constraint — both grammars are composable parsers over
the same character stream. The Apex parser now parses each doc comment **inline,
during the Apex parse**, and attaches the resulting `DocComment` directly to the
model. There is no lazy re-parse step.

Details:
- Parsing happens in the per-declaration builders (which run once, on the
  winning parse alternative), **not** in the shared `_prefix` rule — `_prefix`
  re-runs on every backtracked member alternative, so parsing there would parse
  the same doc several times. `_prefix` still only captures the raw string
  (cheap `flatten`).
- **Error isolation:** `_parseDoc` wraps the sub-parse; a malformed doc yields an
  error `DocComment` and never fails the enclosing Apex parse.
- Output is byte-identical (still 279/279 and 49/49) — the change is eager vs.
  lazy, not a change in results.
- Laziness was dropped deliberately: this library's real output is JSON, which
  serialises every declaration's `docComment`, so all docs are parsed anyway —
  lazy parsing bought nothing.

## Feasibility conclusion

**Feasible.** The hard parts — the Apex declaration grammar, exact type-reference
modelling, doc-comment attachment, robust body skipping (SOQL/SOSL/strings/
comments), and byte-exact model output — are all done and verified against ANTLR
on 49 diverse inputs. The remaining work (group comments + unwinding ANTLR from a
handful of test setups) is mechanical, not exploratory.

## Files added

- `lib/src/service/apexdoc/apexdoc_pp_parser.dart` — petitparser Apexdoc parser.
- `lib/src/service/apex_pp/apex_pp_parser.dart` — petitparser Apex/Trigger parser.
- `tool/diff/diff.dart` — ANTLR-vs-petitparser differential harness.
- `parsers.dart` entry points repointed; ANTLR code otherwise untouched.
