import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:dart_cognitive_complexity/src/cognitive_complexity_lint_rule.dart';
import 'package:dart_cognitive_complexity/src/cognitive_complexity_lint_rule_config.dart';

PluginBase createPlugin() => _Linter();

class _Linter extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    final options = configs.rules[CognitiveComplexityLintRule.name];

    return [
      CognitiveComplexityLintRule(
        config: CognitiveComplexityLintRuleConfig.fromLintOptions(options),
      ),
    ];
  }
}
