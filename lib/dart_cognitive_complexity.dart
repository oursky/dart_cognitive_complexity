import 'package:analysis_server_plugin/plugin.dart';
import 'package:analysis_server_plugin/registry.dart';

import 'src/cognitive_complexity_lint_rule.dart';

final plugin = CognitiveComplexityPlugin();

class CognitiveComplexityPlugin extends Plugin {
  @override
  String get name => 'dart_cognitive_complexity';

  @override
  void register(PluginRegistry registry) {
    registry.registerLintRule(CognitiveComplexityLintRule());
  }
}
