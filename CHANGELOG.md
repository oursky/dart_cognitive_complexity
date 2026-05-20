## 2.0.0

- **Breaking:** migrated from the deprecated `custom_lint_builder` to
  `analysis_server_plugin`. The plugin is now loaded directly by the Dart
  analysis server instead of through `custom_lint`.
- **Breaking:** users no longer activate the rule under a `custom_lint:` block
  in `analysis_options.yaml`. Activate the plugin via `analyzer.plugins:` and
  configure the threshold under a top-level `cognitive_complexity:` block.
- **Breaking:** removed the per-rule `severity:` option. Use the analyzer's
  standard `analyzer.errors:` mechanism to override severity.
- Bumped minimum SDK to `^3.6.0` (required by `analysis_server_plugin`).

## 1.0.1

- Bump version.

## 1.0.0

- Initial version.
