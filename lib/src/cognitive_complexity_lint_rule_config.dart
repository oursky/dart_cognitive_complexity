import 'package:analyzer/error/error.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

const Map<String, ErrorSeverity> errorSeverityMap = {
  'info': ErrorSeverity.INFO,
  'warning': ErrorSeverity.WARNING,
  'error': ErrorSeverity.ERROR,
};

class CognitiveComplexityLintRuleConfig {
  CognitiveComplexityLintRuleConfig({
    int? threshold,
    ErrorSeverity? severity,
  })  : threshold = threshold ?? 10,
        severity = severity ?? ErrorSeverity.ERROR;

  final int threshold;
  final ErrorSeverity severity;

  factory CognitiveComplexityLintRuleConfig.fromLintOptions(
    LintOptions? options,
  ) {
    final maybeThreshold = options?.json['threshold'];
    final maybeSeverity = options?.json['severity'];

    return CognitiveComplexityLintRuleConfig(
      threshold: maybeThreshold is int ? maybeThreshold : null,
      severity:
          maybeSeverity is String ? errorSeverityMap[maybeSeverity] : null,
    );
  }
}
