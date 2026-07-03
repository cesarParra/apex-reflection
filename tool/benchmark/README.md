# ANTLR vs petitparser benchmark

`benchmark.dart` compares the original **ANTLR** parsing pipeline against the new
**petitparser** pipeline over a real corpus of Apex classes, end to end
(`source → JSON string`, the shipped workload).

Both pipelines still live on the `petitparser` branch (strangler pattern), so the
benchmark can run them side by side. The ANTLR baseline is **faithful**: it uses
the original ANTLR Apex parser *and* the original two-stage (SLL→LL) ANTLR
Apexdoc parser — not the petitparser doc parser the library entry points were
repointed to.

## Running

```sh
dart run tool/benchmark/benchmark.dart --dir=/path/to/a/salesforce/project
```

Point `--dir` at any folder containing `.cls` files (scanned recursively). The
corpus is **not** committed to this repo — it is external and often proprietary.

### Flags

| flag | meaning |
|------|---------|
| `--dir=PATH`     | directory scanned recursively for `*.cls` (**required**) |
| `--iterations=N` | timed passes over the whole corpus per parser (default `3`) |
| `--limit=N`      | only use the first `N` files (quick runs) |
| `--check`        | also compare full JSON output and report parity + first mismatches |

## What it measures

- **Throughput** — median wall-clock over `--iterations` passes, files/s and MB/s,
  and the petitparser-vs-ANTLR speedup. The unit of work is `body → JSON`, which
  forces every doc comment to be parsed on both sides (so doc-parsing cost is
  included, not hidden behind lazy evaluation).
- **Per-file latency** — p50 / p90 / p99 / max, and the slowest files (surfaces
  pathological cases).
- **Correctness** — how many files each parser fails on (timed set = files both
  parse), and with `--check`, how many produce byte-identical JSON.

`last-run.txt` is a captured example run (machine- and corpus-specific — numbers
will differ on your hardware).

## Interpreting output parity (`--check`)

`--check` compares the *full* old-vs-new output, which includes both the Apex
structure **and** the doc-comment parser. A mismatch can therefore come from
either. On the reference corpus the remaining mismatches were a mix of:

- files where **ANTLR's doc parser errors** ("no viable alternative") but
  petitparser succeeds — petitparser is *more* correct here;
- the multi-doc-before-member / section-header quirk, tied to the
  group-comment feature the prototype does not implement yet;
- minor whitespace-sanitisation edges.

See `PETITPARSER_MIGRATION_LOG.md` for the full breakdown and the bugs this
benchmark surfaced (and that were fixed).
