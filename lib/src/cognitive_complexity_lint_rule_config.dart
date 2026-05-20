import 'package:yaml/yaml.dart';

class CognitiveComplexityLintRuleConfig {
  CognitiveComplexityLintRuleConfig({int? threshold})
      : threshold = threshold ?? 10;

  final int threshold;

  factory CognitiveComplexityLintRuleConfig.fromYaml(YamlMap? options) {
    if (options == null) return CognitiveComplexityLintRuleConfig();
    final rawThreshold = options['threshold'];
    return CognitiveComplexityLintRuleConfig(
      threshold: rawThreshold is int ? rawThreshold : null,
    );
  }
}
