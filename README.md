# dart_cognitive_complexity

A cognitive complexity linter for Dart libraries or applications.

This plugin is based on [custom_lint](https://github.com/invertase/dart_custom_lint/tree/main) with reference from [eslint-plugin-sonarjs](https://github.com/SonarSource/eslint-plugin-sonarjs/blob/b8bf961931513d46a88a0d3bb48f79c04ecf4bd7/src/rules/cognitive-complexity.ts).

## Install

```yaml
name: example_app

dev_dependencies:
  custom_lint:
  dart_cognitive_complexity:
```

```yaml
analyzer:
  plugins:
    - custom_lint
```

## Config

```yaml
analyzer:
  plugins:
    - custom_lint

custom_lint:
  rules:
    - cognitive_complexity:
      threshold: 15 # default 10
      severity: info # default error
```

## Example

```sh
dart run custom_lint --no-fatal-infos --no-fatal-warnings
```

For detail usages, please refer to [custom_lint](https://github.com/invertase/dart_custom_lint/tree/main) usages.
