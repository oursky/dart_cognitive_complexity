import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/error/error.dart';

import 'cognitive_complexity_lint_rule_config.dart';
import 'cognitive_complexity_visitor.dart';
import 'options_loader.dart';

class CognitiveComplexityLintRule extends AnalysisRule {
  static const String ruleName = 'cognitive_complexity';

  CognitiveComplexityLintRule()
      : super(
          name: ruleName,
          description:
              'Functions should not be cognitively complex; refactor them '
              'when the score exceeds the configured threshold.',
        );

  final OptionsLoader _optionsLoader = OptionsLoader();

  @override
  DiagnosticCode get diagnosticCode => const LintCode(
        ruleName,
        'Refactor this function to reduce its Cognitive Complexity '
            'from {0} to {1}',
        severity: DiagnosticSeverity.ERROR,
      );

  @override
  void registerNodeProcessors(
    RuleVisitorRegistry registry,
    RuleContext context,
  ) {
    final filePath = context.definingUnit.file.path;
    final config = _optionsLoader.resolve(filePath);
    registry.addCompilationUnit(this, _Visitor(this, config));
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this._rule, this._config);

  final CognitiveComplexityLintRule _rule;
  final CognitiveComplexityLintRuleConfig _config;

  @override
  void visitCompilationUnit(CompilationUnit node) {
    final visitor = CognitiveComplexityVisitor(threshold: _config.threshold);
    node.accept(visitor);
    for (final issue in visitor.issues) {
      _rule.reportAtToken(
        issue.token,
        arguments: [issue.complexity, _config.threshold],
      );
    }
  }
}
