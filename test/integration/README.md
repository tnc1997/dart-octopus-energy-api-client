# Integration Tests

These tests exercise the client against the **real** Octopus Energy API using
**real** credentials. They exist to validate the model layer — especially the
response-nullability decisions documented in
[`CONTRIBUTING.md`](../../CONTRIBUTING.md) — against actual payloads, which
static analysis and handwritten fixtures cannot fully verify.

They are **read-only**: only `GET` endpoints are called. The mutating endpoints
(`createAccount`, `createQuote`, `renewBusinessTariff`) are deliberately never
invoked here.

## Running Them

The tests are tagged `integration` and **self-skip** unless credentials are
present, so the default `dart test` run stays offline and needs no setup.

```sh
cp .env.example .env.integration   # then fill in real values
source .env.integration
dart test --tag integration
```

| Variable                        | Required                         |
|---------------------------------|----------------------------------|
| `OCTOPUS_ENERGY_API_KEY`        | all integration tests            |
| `OCTOPUS_ENERGY_ACCOUNT_NUMBER` | account-scoped integration tests |

`.env.integration` (and any `.env*` except `.env.example`) is gitignored —
never commit credentials. The tests assert nothing about your data and log
nothing, so no account details are written to the test output.

## What Is and Is Not Covered

Each scenario issues the real request and confirms the response **deserializes
without throwing** — that is the whole assertion. A successful call proves both
that the request was accepted (a non-2xx status throws) and that the response
body mapped onto the model (`fromJson` throws on a shape or type mismatch).
Detailed field assertions live in the offline unit tests, against controlled
fixtures.

**Known coverage gap:** the `ExportDetails` → `Installation` path (the
`capacityInKw` / `estimatedAnnualGenerationInKwh` / `technologyType` fields made
nullable on reasoned grounds) is only reachable for accounts with export /
generation. It is **not** verified by this suite and remains the one
unconfirmed nullability decision — add a scenario for it if you gain access to a
generation account.
