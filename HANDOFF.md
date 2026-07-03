# Handoff: ANTLR → petitparser migration (branch `petitparser`)

Read this first if you are picking up this work. It orients you on what exists on
this branch, what was proven, what is deliberately incomplete, and what the
"real" (clean-branch) work must do. Companion docs:

- `PETITPARSER_MIGRATION_LOG.md` — detailed running log of the experiment.
- `tool/benchmark/README.md` — how to run the benchmark.

---

## 1. TL;DR

This branch is an **experiment / proof of concept**: replace the ANTLR-based
Apex + Apexdoc parsers with hand-written **petitparser** grammars. It is
**prototype (dirty) code, not intended to merge as-is**. The goal was to learn
whether the rewrite is feasible; it is.

State at handoff:

- **All 279 existing unit tests pass, unchanged** (no test assertion or setup was
  modified).
- Three parsers reimplemented on petitparser behind the existing entry points:
  Apexdoc doc comments, Apex types (class/interface/enum), Apex triggers.
- The two grammars were **unified into one** — a doc comment is parsed by a rule
  inside the Apex parser graph, in the same pass (no separate doc-parsing step).
- **Faithful benchmark vs ANTLR on a real 2975-file corpus**: ~1.45× faster,
  ~99.5% byte-identical JSON, 1/2975 parse failures.
- The old ANTLR code is **still present** (strangler pattern) and still used by
  some tests — nothing was deleted.

The `petitparser` package was added to `pubspec.yaml`.

---

## 2. What was accomplished (the POC)

1. **Apexdoc parser** (`lib/src/service/apexdoc/apexdoc_pp_parser.dart`) — a
   petitparser grammar producing the exact same `DocComment` model. Exposed as a
   composable `Parser<DocComment>` (`ApexdocPpParser.wrapped`) plus a standalone
   `ApexdocPpParser.parse(String)` entry point.
2. **Apex + Trigger parser** (`lib/src/service/apex_pp/apex_pp_parser.dart`) —
   parses only the **declaration structure** needed for reflection (types,
   members, modifiers, annotations, doc comments, signatures, type references).
   Method / constructor / property / trigger **bodies are skipped as balanced
   blocks** (their contents are irrelevant to the model). Builds the model
   objects **directly via their plain constructors**.
3. **Single grammar / single pass** — the Apex grammar composes
   `ApexdocPpParser.wrapped` in its `_prefix` rule, so doc comments are parsed
   from the source stream during the Apex parse and attached eagerly. There is no
   lazy re-parse and no separate doc-parser invocation on a substring.
4. **Entry points repointed** (`lib/src/service/parsers.dart`):
   `ApexParser.parseFromBody`, `TriggerParser.parseFromBody`, and
   `ApexdocParser.parseFromBody` now use petitparser. `Reflection.reflect` /
   `reflectTrigger` therefore run on petitparser.
5. **Differential harness** (`tool/diff/diff.dart`) — 49 curated cases run
   through both ANTLR and petitparser; JSON compared. 49/49 identical.
6. **Benchmark** (`tool/benchmark/benchmark.dart`) — full-pipeline speed +
   correctness comparison over a real corpus.

### Key architectural insight (why no tests had to change)

The model classes are coupled to ANTLR context types (`TypeRefContext`,
`AnnotationContext`) only through a **factory** (`ObjectTypeReference(...)`) and a
**named constructor** (`Annotation.fromAnnotationContext`). But the concrete
classes also have **plain constructors** (`ReferenceObjectType(String)`,
`ListObjectType(...)`, `Annotation(String)`, etc.). The petitparser parser builds
model objects via those plain constructors, so the ANTLR-coupled factory /
constructor — and every test that exercises them — are left untouched.

---

## 3. Where things live / what still runs on ANTLR

New petitparser code:

- `lib/src/service/apex_pp/apex_pp_parser.dart` — Apex + Trigger grammar.
- `lib/src/service/apexdoc/apexdoc_pp_parser.dart` — Apexdoc grammar.
- `lib/src/service/parsers.dart` — entry points (repointed).

Still ANTLR (kept intentionally; **do not delete until the clean rewrite**):

- `lib/src/antlr/**` — generated ANTLR lexers/parsers + `.g4` grammars.
- `lib/src/service/walker.dart` — `Walker`, `ApexWalkerDefinition`,
  `ApexdocWalkerDefinition`.
- `lib/src/service/apex_listener.dart`, `apexdoc_listener.dart` — ANTLR listeners
  (build the model from ANTLR parse trees). Note: `DeclarationDescriptor` from
  `apex_listener.dart` is **reused** by the petitparser parser for modifier
  classification.
- `lib/src/service/case_insensitive_input_stream.dart`.

Which tests exercise which engine now:

| Test file | Entry point | Runs on |
|---|---|---|
| `apexdoc_parser_test`, `doc_comment_test` | `ApexdocParser.parseFromBody` | **petitparser** |
| `reflection.test` | `Reflection.reflect` | **petitparser** |
| `trigger_parser_test` | `TriggerParser.parseFromBody` | **petitparser** |
| `apex_listener_test`, `type_references_end_to_end_test`, `apexdoc_integration_test` | local `walkApex` → `Walker.walk` + `ApexWalkerDefinition` | **ANTLR** |
| `walker_test` | `Walker.walk` directly | **ANTLR** |
| `type_references_test` | `ObjectTypeReference(mock TypeRefContext)` | **ANTLR factory** |
| model / serialization tests | model constructors, no parser | n/a |

So the petitparser Apex parser is directly exercised by only `reflection.test`
(no assertions — just "doesn't throw + serialises") and `trigger_parser_test`.
Its real correctness evidence is the **differential harness** and the
**benchmark**, not the existing test suite.

---

## 4. Correctness

- **279/279 unit tests pass**, unchanged.
- **Differential harness: 49/49** byte-identical JSON vs ANTLR across classes,
  interfaces, enums, all modifiers, annotations (incl. element values),
  properties, fields, methods, constructors, inner types, every type-reference
  shape (List/Set/Map/generic/nested/arrays/namespaced), and body-skipping
  (SOQL/SOSL/switch/null-coalesce). Two ANTLR quirks are deliberately reproduced:
  array `rawDeclaration` collapsing to bracket-less text, and token-concatenated
  annotation text.
- **Real corpus (2975 files): ~99.5% byte-identical**, 1 parse failure.

### Bugs the benchmark surfaced and that were fixed

Real code is far more varied than the unit tests; running the benchmark exposed
six real bugs, all fixed (tests + differential still green):

1. Inner `virtual`/`abstract` class modifier (ANTLR classifies inner-type
   modifiers with `isMember=true`).
2. Generic collection literals in field initializers `new Map<String,Integer>{…}`
   (~99 of the original 100 failures) — `<…>` now balance-tracked.
3. `List <String>` — whitespace between a type name and `<`.
4. Unquoted annotation element values `@InvocableVariable(Required=false Label='x')`.
5. Dotted generic type refs `Database.Batchable<Object>`.
6. Apexdoc `@throws System.Ex` / `@param List<Foo>` name split, and `@returns`
   keyword prefix-matching.

### Remaining known differences (~15 files, long tail)

- Files where **ANTLR's doc parser errors** ("no viable alternative") but
  petitparser succeeds — petitparser is *more* correct here.
- The **multi-doc-before-member / section-header quirk**: ANTLR's member path
  takes the *first* of several stacked doc comments; tied to the unimplemented
  group-comment feature.
- Minor whitespace-sanitisation edges (e.g. one leading space).
- One `.cls` (`fflib_ApexMocksUtils`) uses a construct the prototype grammar does
  not accept yet.

---

## 5. Benchmarking

`tool/benchmark/benchmark.dart` (see `tool/benchmark/README.md`).

```sh
dart run tool/benchmark/benchmark.dart --dir=/path/to/salesforce/project
# reference corpus used during this work:
dart run tool/benchmark/benchmark.dart --dir=/Users/cesarparra/IdeaProjects/work/src-nmb-nu --check
```

- Unit of work = `source → JSON string` (the shipped WASM workload). This forces
  every doc comment to be parsed on both sides, so doc-parsing cost is included.
- The ANTLR baseline is **faithful**: it reconstructs the original pipeline —
  ANTLR Apex parser **and** the original two-stage (SLL→LL) ANTLR Apexdoc parser
  (both still on this branch). It does **not** use the petitparser doc parser.
- `--check` compares full JSON parity; `--limit=N` / `--iterations=N` available.
- `tool/benchmark/last-run.txt` is a captured example (machine-specific).

Reference results (2975 `.cls`, ~24 MB, median of 3 passes):

- **~1.45× faster** end to end (~8.0 s → ~5.6 s), faster at p50/p90/p99 and on
  the slowest files (e.g. `MetadataService.cls`).
- ~99.5% identical JSON, 1/2975 parse failures.

Caveat: this library ships as **WASM** (see project memory). These numbers are
Dart-VM (JIT). Re-measure on the **WASM** build for shipping-relevant numbers;
relative speedup should hold, absolute numbers will differ.

---

## 6. Tradeoffs — what we win vs. what we lose

### Winning

- **Speed**: ~1.45× faster end to end; the ANTLR Apexdoc LL-blowup pathology
  (see project memory `apexdoc-parser-slowness`) is gone — petitparser parses
  those docs linearly, and several docs that ANTLR *errors* on now parse.
- **One grammar, one pass**: no separate lexer vocabularies, no hidden-channel
  dance, no second parser instance on a substring. Doc comments parse inline.
- **No generated code**: ~11k-line generated `ApexParser.dart` + lexers replaced
  by ~700 lines of readable grammar. No ANTLR toolchain / regeneration step.
- **Decoupling from ANTLR**: the model no longer *needs* ANTLR context types
  (the petitparser path bypasses them); removing ANTLR entirely is now mechanical.
- **Robustness**: bodies are skipped as balanced blocks, so new Apex syntax
  inside method bodies (new operators, SOQL/SOSL features) can't break parsing.

### Losing / costs

- **Completeness**: the prototype does not implement **group comments**
  (`// @start-group` / `/** @start-group */`) — the one modeled feature it drops.
  ~15/2975 real files differ, and 1 fails to parse outright.
- **Hand-maintained grammar**: correctness is on us, not a formal grammar. The
  `.g4` files were a spec; now the grammar lives in Dart combinators.
- **Heuristics with known ceilings** (marked in code / here):
  - Annotation element values parsed with a **regex**, not a sub-grammar.
  - Field initializer values use a `<…>` balancing heuristic with a single-char
    fallback (handles generic literals vs. bare comparisons; contrived mixes
    could still be wrong — irrelevant to output since only field *names* matter).
  - Several **ANTLR quirks are reproduced on purpose** for byte parity (array
    `rawDeclaration`, doc keyword maximal-munch). If the clean version decides
    ANTLR's behavior was a bug, these should be revisited (and will change
    output).
- **PEG error messages are poor**: an ordered-choice failure reports the *last*
  alternative ("`enum` expected"), not the real failure point. Debugging a
  failing file means bisecting the input. Consider better error reporting in the
  real work.
- **Laziness dropped**: docs are parsed eagerly. This is *fine here* (JSON output
  serialises every doc anyway) but is a behavior change from the original lazy
  model.

---

## 7. Test coverage gaps — IMPORTANT for the real work

The existing unit tests did **not** catch the six bugs above; the benchmark did.
That means the suite has real blind spots. **Part of the clean-branch scope is to
add tests covering the constructs uncovered during this refactoring**, so the
behavior is pinned before/independent of the parser rewrite. Concretely, add
tests (ideally asserting the produced model/JSON, runnable against the ANTLR
implementation on `main` to capture the *intended* behavior) for:

- **Inner `virtual`/`abstract` classes** — assert `classModifier` /
  `memberModifiers` on an inner type (ANTLR drops `virtual` on inner classes via
  `isMember=true`; is that the desired behavior or an ANTLR bug to fix?).
- **Generic collection literals in field initializers** — `new Map<K,V>{…}`,
  `new List<T>{…}` as field default values.
- **Whitespace in type args** — `List <String>`, `Map <Id, Foo>`.
- **Annotation element values**: unquoted values (`Required=false`), space- vs
  comma-separated pairs, multiple pairs, quoted values with spaces.
- **Dotted generic type references** — `Database.Batchable<Object>`,
  `Messaging.SingleEmailMessage`, `Schema.SObjectField` (assert `type` /
  `rawDeclaration` / `ofType`).
- **Apexdoc edge cases**: `@throws Namespace.Exception msg` (name split),
  `@param List<Foo> x`, `@returns`/`@returnsomething` (keyword maximal-munch),
  fully-qualified names in tags.
- **Multi-doc-before-member** — two stacked `/** */` before a member (which one
  wins?), and section-header style docs — this is entangled with group comments.
- **Group comments** — `// @start-group` / `// @end-group` and
  `/** @start-group */` (currently unimplemented; `apex_listener_test` covers
  these but only on ANTLR).
- **The `fflib_ApexMocksUtils.cls` construct** that currently fails to parse
  (find the exact construct, add a minimal test).

Recommendation: capture "golden" JSON for a sample of the real corpus from the
**ANTLR `main` build** and add a regression test that the new parser reproduces
it (minus the intentionally-changed quirks / group gap). The differential harness
(`tool/diff`) and benchmark `--check` are the scaffolding for this.

---

## 8. Remaining work / path to fully delete ANTLR (clean branch)

1. **Implement group comments** (the one missing feature). Suggested approach:
   have class-body parsing emit a flat list of *events* (member-builder /
   group-start / group-end) and apply group scoping in a post-parse pass, rather
   than mutating state mid-parse (petitparser backtracks). This also subsumes the
   multi-doc-before-member quirk.
2. **Fix the 1 failing file** and any others a larger corpus surfaces.
3. **Decide on the reproduced ANTLR quirks** — keep for compatibility or fix.
4. **Add the missing tests** (section 7) — pin behavior first.
5. **Unwind ANTLR from test setups** (assertions stay; only setup changes, which
   the brief allows — log them):
   - `type_references_test` mocks `TypeRefContext` → change
     `ObjectTypeReference` to accept a parsed type (string / small struct).
   - `walkApex` helpers in `apex_listener_test` /
     `type_references_end_to_end_test` / `apexdoc_integration_test` → point at the
     petitparser entry points.
6. **Delete** `lib/src/antlr/**`, `walker.dart`, `apex_listener.dart`,
   `apexdoc_listener.dart`, `case_insensitive_input_stream.dart`, and the
   `antlr4` dependency. Move `DeclarationDescriptor` out of `apex_listener.dart`
   first (the petitparser parser reuses it).
7. **Re-benchmark on the WASM build.**

---

## 9. Commit map

Branch `petitparser`, off `main`. Chronological:

| Commit | What |
|---|---|
| `a24b428` | Replace ANTLR Apexdoc parser with petitparser prototype |
| `ba479fc` | Add petitparser Apex/Trigger parser; repoint entry points |
| `53a72ef` | 49/49 JSON parity with ANTLR; add differential harness |
| `c002d29` | Clean up warnings; add migration findings log |
| `6fa019c` | Parse doc comments inline (eager, still two composed parsers) — **"before" benchmark marker** |
| `43e6a95` | Unify Apex + Apexdoc into one grammar (single-pass) — **"after" benchmark marker** |
| `e8a2941` | Add ANTLR-vs-petitparser benchmark; fix 6 bugs it surfaced |

Diff `6fa019c..43e6a95` to see the single-grammar refactor in isolation.

---

## 10. How to verify / reproduce

```sh
dart test                                   # 279 pass
dart run tool/diff/diff.dart                # 49/49 MATCH, 0 DIFF, 0 PP_ERR
dart run tool/benchmark/benchmark.dart --dir=<apex-project> --check
dart analyze lib/src/service/apex_pp lib/src/service/apexdoc   # clean
```

Note: `dart analyze lib/src/service/parsers.dart` reports a few **unused-import**
warnings — leftover ANTLR imports in the repointed entry-point file. Harmless
(strangler); they go away when ANTLR is removed.

---

## 11. Gotchas for the next agent

- The petitparser Apex parser only needs declaration **structure** — it does not
  parse expressions/statements. Don't add body parsing; keep skipping balanced
  blocks.
- `_prefix` is factored out of the member/type backtracking alternations and is
  **isMember-agnostic** (raw modifier keywords, classified later). This is what
  lets one parsed prefix serve both a member and an inner type, and keeps the
  composed doc parser running once per declaration. Preserve that shape.
- Model objects are built via **plain constructors**, on purpose — do not route
  through `ObjectTypeReference(TypeRefContext)` or `Annotation.fromAnnotationContext`.
- Some tests still run on ANTLR by design (section 3). Green tests do **not**
  mean the petitparser parser covers everything — lean on the differential + a
  golden-corpus regression test.
- Reproduced ANTLR quirks are intentional for parity; changing them changes
  output and will show up in the differential/benchmark.
