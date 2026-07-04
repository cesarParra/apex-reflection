# ANTLR vs petitparser benchmark

`benchmark.dart` compares the original **ANTLR** parsing pipeline against the new
**petitparser** pipeline over a real corpus of Apex classes, end to end
(`source → JSON string`, the shipped workload).

Both pipelines still live on this branch (strangler pattern), so the benchmark
can run them side by side. The ANTLR baseline is **faithful**: it uses the
original ANTLR Apex parser *and* the original two-stage (SLL→LL) ANTLR Apexdoc
parser, not the petitparser doc parser the library entry points were repointed
to. This scaffolding goes away once the ANTLR code is deleted.

## Running

```sh
dart run tool/benchmark/benchmark.dart --dir=/path/to/a/salesforce/project
```

Point `--dir` at any folder containing `.cls` files (scanned recursively). The
corpus is **not** committed to this repo; it is external and often proprietary.

### Flags

| flag | meaning |
|------|---------|
| `--dir=PATH`     | directory scanned recursively for `*.cls` (**required**) |
| `--iterations=N` | timed passes over the whole corpus per parser (default `3`) |
| `--limit=N`      | only use the first `N` files (quick runs) |
| `--check`        | also compare full JSON output and report parity + first mismatches |
| `--dump=DIR`     | with `--check`, write each mismatch's `.antlr.json` / `.pp.json` pair to `DIR` for triage |

## What it measures

- **Throughput**: median wall-clock over `--iterations` passes, files/s and MB/s,
  and the petitparser-vs-ANTLR speedup. The unit of work is `body → JSON`, which
  forces every doc comment to be parsed on both sides (so doc-parsing cost is
  included, not hidden behind lazy evaluation).
- **Per-file latency**: p50 / p90 / p99 / max, and the slowest files (surfaces
  pathological cases).
- **Correctness**: how many files each parser fails on (timed set = files both
  parse), and with `--check`, how many produce byte-identical JSON.

`last-run.txt` is a captured example run (machine- and corpus-specific; numbers
will differ on your hardware).

## Interpreting output parity (`--check`)

The petitparser rewrite intentionally changes output where the ANTLR behavior
was judged a bug, so mismatches against the ANTLR baseline are **expected** on
files that exercise those constructs. Every mismatch should fall into one of
these buckets:

- array raw declarations keep their brackets (`String[]` instead of `String`);
- annotation raw text preserves the author's source spacing;
- the closest of several stacked doc comments documents the member (instead of
  the first);
- inner classes report their `virtual`/`abstract` class modifier;
- `@returns` is honored as an alias of `@return`;
- `@param`/`@throws` names capture the full dotted/generic/array token
  (`System.DmlException`, `Map<Id, Foo>`, `String[]`);
- files where **ANTLR's doc parser errors** ("no viable alternative") but
  petitparser succeeds.

A mismatch that fits none of these buckets is a real regression and needs
investigation. Dump the pairs with `--dump` and diff them.
