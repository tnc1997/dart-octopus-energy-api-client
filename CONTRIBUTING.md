# Contributing

Thanks for contributing to the (unofficial) Dart client for the Octopus Energy
API. This document explains how the package is laid out, how to add to it, and
the conventions every model, enum, service, and test is expected to follow.

The single most important idea: **this client tracks the published OpenAPI
schema as closely as the schema allows.** Read [The Schema Is the Source of
Truth](#the-schema-is-the-source-of-truth) before adding anything.

## Contents

- [Development Setup](#development-setup)
- [Continuous Integration](#continuous-integration)
- [Releasing](#releasing)
- [Project Layout and Versioning](#project-layout-and-versioning)
- [The Schema Is the Source of Truth](#the-schema-is-the-source-of-truth)
- [Adding an Endpoint, End to End](#adding-an-endpoint-end-to-end)
- [Conventions](#conventions)
  - [Models](#models)
  - [Model Nullability: The Loosest-Contract-Per-Field Rule](#model-nullability-the-loosest-contract-per-field-rule)
  - [Enums](#enums)
  - [Services](#services)
- [Testing](#testing)
  - [Unit Tests](#unit-tests)
  - [Integration Tests](#integration-tests)
- [Commit Messages and Pull Requests](#commit-messages-and-pull-requests)

## Development Setup

The package targets the Dart SDK range declared in `pubspec.yaml` and depends
only on `package:http`. There is no code generation step, and no external
services are required — the default test suite runs offline against mocked HTTP
clients. (A separate, opt-in suite of integration tests exists under
`test/integration/`; see [Integration Tests](#integration-tests). They self-skip
unless credentials are set, so `dart test` stays offline and green.)

```shell
# Fetch dependencies.
dart pub get

# Run the full test suite.
dart test

# Format every file (the repository is fully `dart format`-clean).
dart format .

# Static analysis. Must be clean before you open a pull request.
dart analyze
```

Analysis is configured in `analysis_options.yaml`: the
`package:lints/recommended` set plus the `directives_ordering` lint, so keep
imports and exports alphabetically ordered.

Before pushing, the bar is simply: **`dart format .` makes no changes,
`dart analyze` reports no issues, and `dart test` is green.** These same three
checks run automatically on every pull request (see
[Continuous Integration](#continuous-integration)), but running them locally
first keeps the feedback loop fast.

## Continuous Integration

Every pull request targeting `main` runs the workflow in
`.github/workflows/pull_request.yaml`. It checks out the code, runs `dart pub
get`, and then runs the same three checks you run locally:

1. `dart format --output=none --set-exit-if-changed .` — fails if any file is
   not formatted.
2. `dart analyze --fatal-infos` — fails on any analyzer issue, including
   info-level lints such as `directives_ordering`.
3. `dart test` — fails if any test does not pass.

The workflow uses the latest stable Dart SDK (via `dart-lang/setup-dart`), which
satisfies the SDK range in `pubspec.yaml`. All three checks must pass before a
pull request can be merged, so running them locally first is the quickest way to
avoid a red build.

## Releasing

Releases are automated by `.github/workflows/release.yaml`, which is triggered
manually (`workflow_dispatch`) and derives the version from `pubspec.yaml` — the
workflow owns tag creation, so there is no separate tag to push and no way for the
tag and the published version to disagree.

To cut a release:

1. Bump `version:` in `pubspec.yaml` on `main` and merge it (this is the version
   that gets published, and the version the tag is created from).
2. Run the **Release** workflow against `main`, either from the Actions tab
   ("Run workflow") or with the GitHub CLI:

   ```shell
   gh workflow run release.yaml --ref main
   ```

The workflow then runs two jobs:

1. **`prepare`** — reads the version from `pubspec.yaml` (failing if it is not a
   valid `<major>.<minor>.<patch>` semver or if a `v<version>` tag already exists),
   regenerates `CHANGELOG.md` from the Conventional Commit history with
   [git-cliff](https://git-cliff.org/) (using its built-in default configuration)
   and commits it back to `main`, then creates and pushes the `v<version>` tag at
   that commit. Because the tag is created *after* the changelog commit, the tagged
   commit — and therefore the published package — contains the release notes.
   **Do not edit `CHANGELOG.md` by hand** — the commit `type`, scope, and `!`
   breaking-change marker are what populate it, so getting those right (see
   [Commit Messages and Pull Requests](#commit-messages-and-pull-requests)) is how
   your change reaches the changelog.
2. **`publish`** — checks out the `v<version>` tag and publishes to
   [pub.dev](https://pub.dev) using OIDC, so no long-lived credentials are stored in
   the repository.

## Project Layout and Versioning

The Octopus Energy API is versioned (`/v1/…`, with `/v2/…` endpoints beginning
to appear). Each API version is free to change the *shape* of its data, so the
package keeps versions cleanly separated: **one importable library per API
version**, plus a small common library for the pieces that never change.

```
lib/
├── octopus_energy_api_client.dart                # Neutral front door: common infrastructure only.
├── v1.dart                                       # The complete v1 SDK (barrel export).
└── src/                                          # Private implementation detail.
    ├── common/                                   # Version-INDEPENDENT infrastructure (no domain models).
    │   ├── clients/                              # clientViaApiKey / ApiKeyClient
    │   ├── constants/                            # authority constant
    │   └── exceptions/                           # OctopusEnergyApiClientException
    └── v1/                                       # Everything specific to the v1 API.
        ├── octopus_energy_api_client_base.dart   # The v1 OctopusEnergyApiClient.
        ├── common/                               # Domain models COMMON across v1 features.
        │   ├── enums/
        │   └── models/                           # Address, MeterPoint, Quote, Consumption, …
        ├── accounts/                             # One directory per feature/service.
        │   ├── enums/
        │   ├── models/
        │   └── services/
        ├── electricity_meter_points/
        ├── gas_meter_points/
        ├── industry/
        ├── ivr_support/
        ├── products/
        ├── quotes/
        └── voice/
```

### Two Kinds of `common`, and the Difference Matters

There are two `common` directories and they are **not** the same thing:

- **`lib/src/common/`** (top level) is *infrastructure only* — the HTTP client
  helper, the authority constant, and the exception type. It is plumbing that is
  identical no matter which API version you talk to. **It contains no domain
  models and no API client**, and it never should.
- **`lib/src/v1/common/`** holds *domain models common across several v1
  features* — `Address`, `MeterPoint`, `Quote`, `Consumption`, and so on. These
  are owned by v1; a future `v2/common` would own its own copies, because a v2
  `Address` is free to differ from a v1 `Address`.

When you reach for "common", ask: *is this version-independent plumbing, or a
domain model that several v1 features happen to share?* The answer tells you
which directory.

### Import Entry Points

| Import                                                             | What it contains                                                                                                                                                                             |
|--------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `package:octopus_energy_api_client/octopus_energy_api_client.dart` | **Common infrastructure only.** `clientViaApiKey`, the exception type, and the authority constant. No models and no client — those belong to a version.                                      |
| `package:octopus_energy_api_client/v1.dart`                        | **The complete v1 SDK.** The v1 `OctopusEnergyApiClient`, every v1 service, and every v1 model and enum — plus a re-export of the common infrastructure above, so a single import is enough. |

Everything under `lib/src/` is private. Only the libraries above are part of the
public API. A symbol that is not exported from `v1.dart` (or the neutral library)
**does not exist** as far as consumers are concerned.

### The Barrel Export Rule

`lib/v1.dart` re-exports every public file under `lib/src/v1/` (and the neutral
library at the top). It is a flat, **alphabetically ordered** list of `export`
directives. Whenever you add a model, enum, or service file, add the matching
`export` line in `v1.dart` in the correct alphabetical position. Forgetting this
is the most common way a new type silently fails to reach consumers. The
`directives_ordering` lint will catch ordering mistakes, but not omissions —
that is on you.

### Version-Neutral Type Names

Names are **not** version-suffixed. It is `v1.OctopusEnergyApiClient`, not
`OctopusEnergyApiV1Client`. The version lives in the import path, and the
`import … as v1` / `as v2` prefix is the single mechanism that resolves any
clash between versions. This mirrors Google's `googleapis` package
(`package:googleapis/calendar/v3.dart` exports a `CalendarApi`). Do not
encode the version in a type name.

## The Schema Is the Source of Truth

The OpenAPI schema document `Octopus Energy REST API (v1).yaml` can be found in
the developer documentation. **This schema is the source of truth.** Every model
is a 1:1 translation of a schema component, every enum mirrors a schema `enum`,
and every service method corresponds to a schema operation. When adding or changing
anything, start from the schema, not from intuition.

The client deliberately tracks the schema component-for-component rather than
hand-designing a "nicer" object model, because that 1:1 correspondence is what
keeps the client maintainable as the API evolves: a schema diff maps directly to
a code diff.

That said, the published schema is not perfect, and there are a small number of
**documented, deliberate deviations**. Reproduce these faithfully; do not
"correct" them back toward the raw schema:

1. **Response nullability is looser than the schema's `required`.** The schema
   marks fields `required` from the *request* perspective, but reuses the same
   component for responses, which routinely omit those fields. See
   [Model Nullability](#model-nullability-the-loosest-contract-per-field-rule).
2. **Some real endpoints are missing from the schema.** For example,
   `GET /v1/accounts/{account_number}/` is implemented and verified against a
   genuine response even though it is absent from the YAML. Absence from the
   schema is **not** by itself a reason to remove an endpoint — but a new
   endpoint should not be added on a hunch either.
3. **Some documented endpoints are intentionally not implemented yet.** For example,
   the legacy electricity/gas meter-point GET endpoints are omitted until a real
   response body is documented, rather than being stubbed out as
   `Future<void>`. Do not re-add them speculatively.

If you find a genuine schema gap, prefer verifying against a real API response
and adding a code comment that records what you observed and why the code
diverges from the schema.

## Adding an Endpoint, End to End

This walks through the typical change: adding a new endpoint. Skip the steps
you don't need (an endpoint that reuses existing models skips steps 1–2). The
running example is a hypothetical `GET /v1/<feature>/{id}/` that returns a
`Widget`.

### 1. Add the model(s)

Create one file per schema component under the owning feature's `models/`
directory — `lib/src/v1/<feature>/models/widget.dart`. If the component is
shared by more than one feature, put it under `lib/src/v1/common/models/`
instead (see [the two `common`s](#two-kinds-of-common-and-the-difference-matters)).

Follow the [Models](#models) conventions exactly: a class with public fields, a
constructor, a `fromJson` factory, and a `toJson` method, with fields,
constructor parameters, and JSON keys all in alphabetical order. Decide each
field's nullability with the
[Loosest-Contract-Per-Field Rule](#model-nullability-the-loosest-contract-per-field-rule).

### 2. Add any enums

If a field is a fixed set of string values in the schema, model it as an enum
under `lib/src/v1/<feature>/enums/` (or `lib/src/v1/common/enums/` if common),
following the [Enums](#enums) conventions.

### 3. Add the service method

If the feature already has a service, add a method to it. Otherwise, create
`lib/src/v1/<feature>/services/<feature>_service.dart` following the
[Services](#services) conventions, and register it on the client (step 4).

```dart
/// <Copy the operation's description from the schema, verbatim.>
Future<Widget> getWidget(
  String id,
) async {
  final response = await _client.get(
    Uri.https(
      authority,
      '/v1/<feature>/$id/',
    ),
  );

  OctopusEnergyApiClientException.checkIsSuccessStatusCode(response);

  return Widget.fromJson(json.decode(response.body));
}
```

For a request body, `post` with `'content-type': 'application/json'` and
`body: json.encode(model.toJson())` (see `AccountsService.createAccount`). For
query parameters, add named optional parameters and include them conditionally:

```dart
Uri.https(authority, '/v1/<feature>/', {
  if (page != null) 'page': page.toString(),
  if (periodFrom != null) 'period_from': periodFrom.toIso8601String(),
});
```

### 4. Register a new service on the client

Only if you created a brand-new service. In
`lib/src/v1/octopus_energy_api_client_base.dart`, add a nullable backing field
and a lazy getter, and keep both alphabetically ordered with the existing
services:

```dart
WidgetsService? _widgets;

WidgetsService get widgets {
  return _widgets ??= WidgetsService(
    client: _client,
  );
}
```

### 5. Wire up the barrel exports

Add an `export` line in `lib/v1.dart` for **every** new file — each model, each
enum, and the service — in the correct alphabetical position. See
[The Barrel Export Rule](#the-barrel-export-rule).

### 6. Write the tests

Add a test file mirroring the source path under `test/` (e.g.
`test/v1/<feature>/models/widget_test.dart` and
`test/v1/<feature>/services/<feature>_service_test.dart`). See
[Unit Tests](#unit-tests) for exactly which cases each kind of file needs.

### 7. Verify

Run `dart format .`, `dart analyze`, and `dart test`. All three must be clean.

## Conventions

### Models

Each model corresponds to one schema part and lives in its own file.

- **Public mutable fields**, ordered alphabetically. Doc comments are copied
  from the schema's field descriptions (these often carry request-time
  constraints — keep them; see the nullability rule below).
- **Constructor** with named parameters, alphabetical, `required` only for
  fields that are genuinely always present (request-required *and* always
  returned). Everything optional uses `this.field` without `required`.
- **`factory Model.fromJson(Map<String, dynamic> json)`** that maps every JSON
  key. JSON is `snake_case`; Dart is `camelCase`.
- **`Map<String, dynamic> toJson()`** whose keys are the `snake_case` JSON
  names, in alphabetical order by key.

Type-mapping idioms (match these precisely so the codebase stays uniform):

| JSON shape                                          | `fromJson`                                                                                    | `toJson`                             |
|-----------------------------------------------------|-----------------------------------------------------------------------------------------------|--------------------------------------|
| Number → `int`                                      | `(json['x'] as num?)?.toInt()`                                                                | `x`                                  |
| Number → `double`                                   | `(json['x'] as num?)?.toDouble()`                                                             | `x`                                  |
| Numeric value sent as a **string** (rates, uplifts) | `json['x'] != null ? double.parse(json['x'] as String) : null`                                | `x?.toString()`                      |
| `DateTime`                                          | `json['x'] != null ? DateTime.parse(json['x'] as String) : null`                              | `x?.toIso8601String()`               |
| Nested model                                        | `json['x'] != null ? Sub.fromJson(json['x'] as Map<String, dynamic>) : null`                  | `x?.toJson()`                        |
| List of models                                      | `(json['x'] as List<dynamic>?)?.map((e) => Sub.fromJson(e as Map<String, dynamic>)).toList()` | `x?.map((e) => e.toJson()).toList()` |
| Enum                                                | `json['x'] != null ? MyEnum.fromJson(json['x'] as String) : null`                             | `x?.toJson()`                        |

When several components share a field set, model the common part as an
**abstract base class** with its own fields, constructor, and `toJson`, and have
subclasses `extends` it using `super.field` constructor parameters (see
`MeterPoint` → `ElectricityMeterPoint` / `GasMeterPoint`). The base declares no
`fromJson`; each concrete subclass implements its own and `@override`s `toJson`.

### Model Nullability: The Loosest-Contract-Per-Field Rule

The Octopus OpenAPI schema reuses a **single component for both request and
response** bodies and marks fields `required` from the *request's* perspective. A
schema `required` field is therefore **not** a guarantee that it appears in
responses. For example, the `ElectricityMeterPoint` component has `required:
[quote]` and is referenced by both the create-account request body and the GET
electricity-meter-point response — whose own example returns only `gsp`, `mpan`,
and `profile_class` (no `quote`).

#### The Rule

Keep **one Dart model per schema component** (each with `fromJson`/`toJson`), and
set each field's nullability to the **loosest contract across every direction the
model is used in**:

- If any response can omit a field, the field is **nullable** and the constructor
  drops `required`. Guard it in `fromJson` (`json['x'] != null ? ... : null`) and
  `toJson` (`x?.toJson()`). Otherwise `fromJson` crashes on the missing key —
  `json['x'] as String` throws on `null`.
- Request-required constraints live in **doc comments** (the schema already
  phrases them as e.g. "Required if no 'quote_request_code' is supplied"), **not**
  in the type system.

#### Why Not Split Request/Response Models, or Blanket-Nullify Everything?

- **Splitting** into per-direction models would mean hand-inventing and
  maintaining a split the schema does not make, cascading across
  `MeterPoint`/`Address`/`Quote`/`ExportDetails`/etc. High churn for a client that
  otherwise tracks the schema 1:1.
- **Blanket-nullifying** every response field discards real guarantees (pagination
  `count`/`results`, `Account.number`, `Consumption.intervalStart`) and forces
  consumers to null-check values that are never null. The consistency that matters
  is the *rule* applied uniformly, not the *outcome* of all-nullable.

#### How to Apply When Adding or Reviewing a Response Model

Do **not** trust the schema's `required:` array — and do **not** fully trust the
response **example** either. An example shows *one* response, not *every* one: a
field the example includes can still be omitted from other responses when it does
not apply (per fuel type, product type, meter type, export vs. not). A real
captured response is the best evidence; absent that, default
**applicability-dependent** response fields to nullable rather than assuming the
example is exhaustive.

Known edge cases found by auditing the schema examples and real responses:

- `ElectricityMeterPoint.quote` is omitted in the GET response → nullable.
- `Product`'s nested tariff maps can contain empty `{}` objects (e.g.
  `direct_debit_quarterly: {}`) for payment-method slots with no tariff, so every
  schema-`required` field on `StandardElectricityTariff` / `Eco7ElectricityTariff`
  / `GasTariff` is nullable. Each tariff model has a
  `should return model from an empty json object` regression test.
- `SampleQuotes` and `SampleConsumption` each have four `Map<String, double>` rate
  fields (`dual_fuel_dual_rate`, `dual_fuel_single_rate`, `electricity_dual_rate`,
  `electricity_single_rate`). The schema marks all four `required` **and** the
  `Product` example shows them all present, but a real `retrieveProduct` response
  omits the categories that do not apply to a product (e.g., a gas-only product
  carries no `electricity_*`/`dual_fuel_*` quotes), which crashed `fromJson` with
  `type 'Null' is not a subtype of type 'Map<String, dynamic>'`. All four fields on
  both models are nullable — this is the case that proved the response example is
  not exhaustive.
- For the same applicability reason, `Product`'s own
  `sampleQuotes` / `sampleConsumption` objects and its
  `single`/`dualRegisterElectricityTariffs` / `singleRegisterGasTariffs` maps are
  nullable (a single-fuel product may omit the maps for the other fuel entirely).
- `Installation`'s `capacity_in_kw`, `estimated_annual_generation_in_kwh`, and
  `technology_type` are schema-`required`, but `Installation` reaches a response
  only via `ElectricityMeterPoint.export_details` — a common request/response
  model whose `required` reflects the *request*. By the same logic that made
  `ElectricityMeterPoint.quote` nullable, all three are nullable with guarded
  `fromJson`/`toJson` and a `should return model from json when all fields are
  omitted` regression test. (No response example includes `export_details`, so
  this is reasoned consistency, not an observed omission.)
- `Account` and its nested models (the GET endpoint is undocumented, so there is
  no schema example) were verified against a genuine response — all their non-null
  fields are reliably present, so they are correct as-is.

### Enums

An enum mirrors a schema string enumeration. The Dart values are `camelCase`; the
wire values are the schema's exact strings.

- **`factory MyEnum.fromJson(String json)`** with a `switch` over the wire
  strings, and a `default` that throws `ArgumentError.value(json, 'json')`.
- **`String toJson()`** with an *exhaustive* `switch` over the enum values and
  **no** `default` clause — so that adding a value without a mapping is a compile-time
  error rather than a silent fallthrough.

```dart
enum MeterType {
  credit,
  prepayment;

  factory MeterType.fromJson(String json) {
    switch (json) {
      case 'CREDIT':
        return MeterType.credit;
      case 'PREPAYMENT':
        return MeterType.prepayment;
      default:
        throw ArgumentError.value(json, 'json');
    }
  }

  String toJson() {
    switch (this) {
      case MeterType.credit:
        return 'CREDIT';
      case MeterType.prepayment:
        return 'PREPAYMENT';
    }
  }
}
```

### Services

A service groups the operations of one API feature.

- A `final http.Client _client;` and a **`const` constructor** taking
  `required http.Client client`.
- One method per operation, returning `Future<Model>` (or `Future<void>` only
  where the API genuinely returns no response body).
- Build the URL with `Uri.https(authority, '/v1/…/', { …query… })`, using the
  `authority` constant from `common/constants`. Path segments interpolate
  positional parameters; query parameters are named optional parameters included
  conditionally (`if (page != null) 'page': page.toString()`). `DateTime` query
  values use `toIso8601String()`.
- Always call
  `OctopusEnergyApiClientException.checkIsSuccessStatusCode(response)` before
  deserializing, then `return Model.fromJson(json.decode(response.body))`.
- For request bodies: `post` with `headers: {'content-type':
  'application/json'}` and `body: json.encode(model.toJson())`.
- The method's doc comment is the operation description copied from the schema
  (including any "WARNING: only available to partner organizations" notes).

New services must be registered on `OctopusEnergyApiClient` as a lazily created
getter — see step 4 of [Adding an Endpoint](#adding-an-endpoint-end-to-end).

## Testing

Two layers. The default `dart test` run is **offline**: every unit test uses
mocked HTTP, so no credentials or network access are required. A separate,
opt-in [integration suite](#integration-tests) exercises the real API.

### Unit Tests

Every model, enum, and service has a unit test file whose path mirrors the source
file under `test/`. Tests use `package:test`, and service tests use
`package:http/testing.dart`'s `MockClient` — no network access. Tests import the
public library (`package:octopus_energy_api_client/v1.dart`), never `src/`
paths, which also verifies the barrel exports.

Structure with nested `group`s: an outer group named after the type, then a group
per method (`fromJson`, `toJson`, or the service method name).

**Use unique per-field values in test data — not the verbatim schema examples.**
If two fields share the same example value, a test cannot catch a mapping bug
that swaps them. Distinct values per field (e.g. `7.0`, `7.1`, `8.0`, `8.1`, …)
make field-mapping mistakes fail loudly.

**Model tests** cover, at minimum:

- `fromJson` from a **fully populated** JSON object — assert every field.
- `fromJson` from JSON **with the nullable fields omitted** — assert the omitted
  ones are `isNull` and the rest are mapped.
- `fromJson` from an **empty `{}` object** — *only* for models that can legitimately
  be deserialized from `{}` (e.g., the tariff models behind a payment-method slot).
  This is a regression guard against `fromJson` throwing on a missing key.
- `toJson` from a fully populated model, and from one with the nullable fields
  unset (asserting those keys come out `isNull`).

**Enum tests** use a `const _cases = { EnumValue: 'WIRE_STRING', … };` map and
assert: `fromJson` maps every wire string to its value; `fromJson('')` (or any
invalid string) `throwsA(isA<ArgumentError>())`; and `toJson` maps every value
back to its wire string.

**Service tests** drive the method through a `MockClient` and cover:

- the **request path** is correct (capture `request.url.path`);
- query parameters are **included when supplied** and **omitted when not**;
- a successful response **deserializes to the expected type**;
- a JSON error response (with a `content-type: application/json` header and a
  `detail` field) throws an `OctopusEnergyApiClientException` whose `message` is
  the `detail`;
- a non-JSON error response throws with a `null` message.

Common sample payloads can be declared as top-level `final` variables at the
bottom of the test file (see `electricityMeterPoint` and `emptyPaginatedList` in
the electricity-meter-points service test).

### Integration Tests

`test/integration/` holds **read-only, opt-in** tests that run against the live
Octopus Energy API. Each one issues a real request and asserts only that it
**succeeds and deserializes without throwing** — a successful call proves the
request was accepted (a non-2xx status throws) and the response body mapped onto
the model (`fromJson` throws on a shape or type mismatch). They make no
assertions about the account's data and log nothing, so they are safe to run on
any account.

They are tagged `integration` and self-skip unless credentials are present, so
they never affect the default `dart test` run. To run them:

```shell
cp .env.example .env.integration # then fill in real values
source .env.integration
dart test --tag integration
```

`OCTOPUS_ENERGY_API_KEY` is needed by all of them; `OCTOPUS_ENERGY_ACCOUNT_NUMBER`
is needed by the account-scoped ones. A read-only key is enough — these tests
only ever issue `GET` requests; `createAccount`, `createQuote`, and
`renewBusinessTariff` are never called. Credentials live in a gitignored
`.env.integration`. A test that cannot find the account data it needs (e.g., a gas
meter) skips itself at runtime via `markTestSkipped`. See
[`test/integration/README.md`](test/integration/README.md) for the full scenario
list and the one known coverage gap (the export/`Installation` path).

## Commit Messages and Pull Requests

Commits follow [Conventional Commits](https://www.conventionalcommits.org/) with
an optional feature scope:

```
<type>(<scope>): <description in the imperative, lower case>
```

- **Types** in use, with their usual Conventional Commits meaning:
  - `feat` — new capability: a new endpoint/method, or the models and enums
    that support it.
  - `fix` — a bug fix (e.g., correcting a field's nullability or a serialization
    bug).
  - `docs` — documentation only, including adding doc comments to models that
    already exist (much of the history is `docs(<feature>): add <thing> model`,
    which documents an already-committed model rather than adding it).
  - `test` — adding or updating tests.
  - `refactor` — restructuring without changing behavior.
- **Scope** is the feature directory: `accounts`, `products`, `common`,
  `electricity-meter-points`, etc. Omit the scope for repository-wide changes.
- **Breaking changes** use the `!` marker, e.g.
  `refactor!: reorganize package to distinct per-version libraries`.

Commits should be kept **small and single-purpose** — typically one model, one
enum, one endpoint, or its tests per commit. It is normal to split a change
across commits by type, e.g., a new endpoint as `feat(products): …` followed by
its tests as `test(products): …`, and any later documentation pass as
`docs(products): …`.

For pull requests:

- Branch from `main`; PRs target `main`.
- Ensure `dart format .` is clean, `dart analyze` reports nothing, and
  `dart test` passes. These are enforced automatically by the
  [pull request workflow](#continuous-integration), but check them locally first.
- Keep the PR focused and write the title in the same Conventional Commit style.
- **Do not edit `CHANGELOG.md` by hand.** It is generated from the Conventional
  Commit messages since the latest release by CLI tooling — accurate commit
  messages are how your change reaches the changelog, so get the `type`, scope,
  and `!` breaking-change marker right.
- Never commit real credentials. The `example/` should use placeholders such as
  `sk_live_...` and `A-1234ABCD`, not a working API key or account number.
