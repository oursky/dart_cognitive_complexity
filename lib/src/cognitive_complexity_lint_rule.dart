import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:dart_cognitive_complexity/src/cognitive_complexity_lint_rule_config.dart';
import 'package:dart_cognitive_complexity/src/cognitive_complexity_visitor.dart';

class CognitiveComplexityLintRule extends DartLintRule {
  static const String name = 'cognitive_complexity';

  final CognitiveComplexityLintRuleConfig _config;

  CognitiveComplexityLintRule(
      {required CognitiveComplexityLintRuleConfig config})
      : _config = config,
        super(
          code: LintCode(
            name: name,
            problemMessage: "",
          ),
        );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addCompilationUnit((node) {
      final visitor = CognitiveComplexityVisitor(threshold: _config.threshold);
      node.accept(visitor);

      for (final issue in visitor.issues) {
        reporter.reportErrorForToken(
          LintCode(
            name: name,
            problemMessage:
                "Refactor this function to reduce its Cognitive Complexity from ${issue.complexity} to ${_config.threshold}",
            errorSeverity: _config.severity,
          ),
          issue.token,
        );
      }
    });
  }
}
