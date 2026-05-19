import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

import 'cognitive_complexity_lint_rule.dart';
import 'cognitive_complexity_lint_rule_config.dart';

class OptionsLoader {
  final Map<String, CognitiveComplexityLintRuleConfig> _cache = {};

  CognitiveComplexityLintRuleConfig resolve(String filePath) {
    final dir = _findAnalysisOptionsDir(filePath);
    if (dir == null) return CognitiveComplexityLintRuleConfig();
    return _cache.putIfAbsent(dir, () => _load(p.join(dir, 'analysis_options.yaml')));
  }

  String? _findAnalysisOptionsDir(String filePath) {
    var dir = p.dirname(filePath);
    while (true) {
      if (File(p.join(dir, 'analysis_options.yaml')).existsSync()) {
        return dir;
      }
      final parent = p.dirname(dir);
      if (parent == dir) return null;
      dir = parent;
    }
  }

  CognitiveComplexityLintRuleConfig _load(String path) {
    try {
      final doc = loadYaml(File(path).readAsStringSync());
      if (doc is! YamlMap) return CognitiveComplexityLintRuleConfig();
      final ruleOptions = doc[CognitiveComplexityLintRule.ruleName];
      return CognitiveComplexityLintRuleConfig.fromYaml(
        ruleOptions is YamlMap ? ruleOptions : null,
      );
    } catch (_) {
      return CognitiveComplexityLintRuleConfig();
    }
  }
}
