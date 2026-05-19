# dart_cognitive_complexity

A cognitive complexity linter for Dart libraries or applications.

This plugin runs inside the Dart analysis server via
[`analysis_server_plugin`](https://pub.dev/packages/analysis_server_plugin),
with the complexity metric ported from
[eslint-plugin-sonarjs](https://github.com/SonarSource/eslint-plugin-sonarjs/blob/b8bf961931513d46a88a0d3bb48f79c04ecf4bd7/src/rules/cognitive-complexity.ts).

## Install

Add the package as a dev dependency:

```yaml
dev_dependencies:
  dart_cognitive_complexity:
```

Activate the plugin in your `analysis_options.yaml`:

```yaml
analyzer:
  plugins:
    - dart_cognitive_complexity
```

## Config

Configure the threshold under a top-level `cognitive_complexity:` block in
`analysis_options.yaml`:

```yaml
analyzer:
  plugins:
    - dart_cognitive_complexity

cognitive_complexity:
  threshold: 15 # default 10
```

To change the severity, use the analyzer's standard mechanism:

```yaml
analyzer:
  errors:
    cognitive_complexity: warning # info | warning | error
```

## Running

The diagnostics show up in any tool that talks to the analysis server
(`dart analyze`, your IDE, etc.) — no separate runner is needed.

## Migrating from 1.x

Version 2.0 dropped `custom_lint_builder`. To migrate:

- Remove `custom_lint` from your dev dependencies and from `analyzer.plugins:`.
- Add `dart_cognitive_complexity` directly under `analyzer.plugins:`.
- Move the rule options from the `custom_lint:` block to a top-level
  `cognitive_complexity:` block.
- Replace any `severity:` setting with the standard `analyzer.errors:` block.
