import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:dart_cognitive_complexity/src/cognitive_complexity_visitor.dart';

import 'package:test/test.dart';

List<ComplexityIssue> parseSource(String source) {
  ParseStringResult result = parseString(content: source);
  CompilationUnit unit = result.unit;
  final visitor = CognitiveComplexityVisitor(
    threshold: 0,
  );
  unit.accept(visitor);
  return visitor.issues;
}

Future<void> main() async {
  test('zero_complexity', () {
    final issues = parseSource(
      '''
      void zero_complexity() {}  
      ''',
    );

    expect(issues, equals([]));
  });

  test('single_if', () {
    final issues = parseSource(
      '''
      void single_if() {
        if (x) {} // +1
      }
      ''',
    );
    expect(issues.first.complexity, equals(1));
  });

  test('if_else_complexity', () {
    final issues = parseSource(
      '''
      void if_else_complexity() {
        if (condition) {        // +1
        } else if (condition) { // +1
        } else {}               // +1
      }
      ''',
    );
    expect(issues.first.complexity, equals(3));
  });

  test('else_nesting', () {
    final issues = parseSource(
      '''
      void else_nesting() {
        if (condition) {      // +1
        } else {              // +1 (nesting level +1)
            if (condition) {} // +2
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(4));
  });

  test('else_nested', () {
    final issues = parseSource(
      '''
      void else_nested() {
        if (condition) {      // +1 (nesting level +1)
          if (condition) {    // +2
          } else {}           // +1
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(4));
  });

  test('if_nested', () {
    final issues = parseSource(
      '''
      void if_nested() {
        if (condition)          // +1 (nesting level +1)
          if (condition)        // +2 (nesting level +1)
            if (condition) {}   // +3
      }
      ''',
    );
    expect(issues.first.complexity, equals(6));
  });

  test('else_if_nesting', () {
    final issues = parseSource(
      '''
      void else_if_nesting() {
        if (condition) {         // +1
        } else if (condition) {  // +1 (nesting level +1)
          if (condition) {}      // +2
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(4));
  });

  test('loops_complexity', () {
    final issues = parseSource(
      '''
      void loops_complexity() {
        while (condition) {                 // +1 (nesting level +1)
          if (condition) {}                 // +2
        }

        do {                                // +1 (nesting level +1)
          if (condition) {}                 // +2
        } while (condition);

        for (i = 0; i < length; i++) {      // +1 (nesting level +1)
          if (condition) {}                 // +2

          for (i = 0; i < length; i++) {}  // +2
        }

        for (final x in obj) {                    // +1 (nesting level +1)
          if (condition) {}                 // +2
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(14));
  });

  test('switch_complexity', () {
    final issues = parseSource(
      '''
      void switch_complexity() {
        if (condition) {                 // +1 (nesting level +1)
          switch (expr) {                // +2 (nesting level +1)
            case "1":
              if (condition) {}          // +3
              break;
            case "2":
              break;
            default:
              foo();
          }
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(6));
  });

  test('jump_statements_no_complexity', () {
    final issues = parseSource(
      '''
      void jump_statements_no_complexity() {
        if (condition)           // +1
          return;
        else if (condition)      // +1
          return 42;

        label:
        while (condition) {      // +1 (nesting level +1)
          if (condition)         // +2
            break;
          else if (condition)    // +1
            continue;
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(6));
  });

  test('break_continue_with_label', () {
    final issues = parseSource(
      '''
      void break_continue_with_label() {
        label:
        while (condition) {      // +1
          break label;           // +1
          continue label;        // +1
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(3));
  });

  test('try_catch', () {
    final issues = parseSource(
      '''
      void try_catch() {
        try {
          if (condition) {}      // +1
        } catch (someError) {    // +1 (nesting level +1)
          if (condition)  {}     // +2
        } finally {
          if (condition) {}      // +1
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(5));
  });

  test('try_finally', () {
    final issues = parseSource(
      '''
      void try_finally() {
        try {
          if (condition) {}      // +1
        } finally {
          if (condition) {}      // +1
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(2));
  });

  test('check_secondaries', () {
    final issues = parseSource(
      '''
      void check_secondaries() {
        if (condition) {       // +1 "if"
          if (condition) {} else {} // +2 "if", +1 "else"
          try {}
          catch (someError) {} // +2 "catch"
        } else { // +1
        }

        foo:
        while (cond) { // +1 "while"
          break foo; // +1 "break"
        }

        a ? 1 : 2; // +1 "?"

        switch (a) {} // +1 "switch"

        return foo(a && b) && c; // +1 "&&", +1 "&&"
      }
      ''',
    );
    expect(issues.first.complexity, equals(13));
  });

  test('and_or_locations', () {
    final issues = parseSource(
      '''
      void and_or_locations() {
        foo(1 && 2 || 3 && 4);
      }
      ''',
    );
    expect(issues.first.complexity, equals(3));
  });

  test('and_or', () async {
    final issues = parseSource(
      '''
      void and_or() {
        foo(1 && 2 && 3 && 4); // +1
        foo((1 && 2) && (3 && 4)); // +1
        foo(((1 && 2) && 3) && 4); // +1
        foo(1 && (2 && (3 && 4))); // +1
        foo(1 || 2 || 3 || 4); // +1
        foo(1 && 2 || 3 || 4); // +2
        foo(1 && 2 || 3 && 4); // +3
        foo(1 && 2 && !(3 && 4)); // +2
      }
      ''',
    );
    expect(issues.first.complexity, equals(12));
  });

  test('conditional_expression', () {
    final issues = parseSource(
      '''
      void conditional_expression() {
        return condition ? trueValue : falseValue;
      }
      ''',
    );
    expect(issues.first.complexity, equals(1));
  });

  test('nested_conditional_expression', () {
    final issues = parseSource(
      '''
      void nested_conditional_expression() {
        x = condition1 ? (condition2 ? trueValue2 : falseValue2) : falseValue1 ; // +3
        x = condition1 ? trueValue1 : (condition2 ? trueValue2 : falseValue2)  ; // +3
        x = condition1 ? (condition2 ? trueValue2 : falseValue2) : (condition3 ? trueValue3 : falseValue3); // +5
      }
      ''',
    );
    expect(issues.first.complexity, equals(11));
  });

  test('complexity_in_conditions', () {
    final issues = parseSource(
      '''
      void complexity_in_conditions(a, b) {
        if (a && b) {                            // +1(if) +1(&&)
          a && b;                                // +1 (no nesting)
        }
        while (a && b) {}                        // +1(while) +1(&&)
        do {} while (a && b);                     // +1(do) +1(&&)
        for (var i = a && b; a && b; a && b) {}  // +1(for) +1(&&)  +1(&&)  +1(&&)
      }
      ''',
    );
    expect(issues.first.complexity, equals(11));
  });

  test('arrow_function', () {
    final issues = parseSource(
      '''
      var arrowFunction = (bool x, bool y) => a && b;
      ''',
    );
    expect(issues.first.complexity, equals(1));
  });

  test('function_expression', () {
    final issues = parseSource(
      '''
      var functionExpression = (bool a, bool b) { return a && b; };
      ''',
    );
    expect(issues.first.complexity, equals(1));
  });

  test('class_method', () {
    final issues = parseSource(
      '''
      class A {
        methodABC() {
          if (condition) {  // +1
          }
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(1));
  });

  test('constructor', () {
    final issues = parseSource(
      '''
      class A {
        A() {
          if (condition) {} // +1
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(1));
  });

  test('nesting_func_no_complexity', () {
    final issues = parseSource(
      '''
      void nesting_func_no_complexity() {
        void nested_func() { // Noncompliant
          if (condition) {}      // +1
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(1));
  });

  test('nesting_func_with_complexity', () {
    final issues = parseSource(
      '''
      void nesting_func_with_complexity() {  // Noncompliant
        if (condition) {}          // +1
        void nested_func() {   // (nesting level +1)
          if (condition) {}        // +2
        }
      }
      ''',
    );
    expect(issues.first.complexity, equals(3));
  });

  test('nesting_func_with_not_structural_complexity', () {
    final issues = parseSource(
      '''
      void nesting_func_with_not_structural_complexity() {  // Noncompliant
        return a && b;             // +1
        void nested_func() {   // Noncompliant
          if (condition) {}        // +1
        }
      }
      ''',
    );

    expect(issues.first.complexity, equals(1));
    expect(issues[1].complexity, equals(1));
  });

  test('two_level_function_nesting', () {
    final issues = parseSource(
      '''
      void two_level_function_nesting() {
        void nested1() {      // Noncompliant
          void nested2() {    // (nesting +1)
            if (condition) {}     // +2
          }
        }
      }
      ''',
    );

    expect(issues.first.complexity, equals(2));
  });

  test('two_level_function_nesting_2', () {
    final issues = parseSource(
      '''
      void two_level_function_nesting_2() {
        void nested1() {     // Noncompliant
          if (condition) {}      // +1
          void nested2() {   // (nesting +1)
            if (condition) {}    // +2
          }
        }
      }
      ''',
    );

    expect(issues.first.complexity, equals(3));
  });

  test('with_complexity_after_nested_function', () {
    final issues = parseSource(
      '''
      void with_complexity_after_nested_function() { // Noncompliant
        void nested_func() {   // (nesting level +1)
          if (condition) {}        // +2
        }
        if (condition) {}          // +1
      }
      ''',
    );

    expect(issues.first.complexity, equals(3));
  });

  test('nested_async_method', () {
    final issues = parseSource(
      '''
      void nested_async_method() {
        var method = () async {
            if (condition) {}      // +1
        };
      }
      ''',
    );

    expect(issues.first.complexity, equals(1));
  });

  test('nested_async_method', () {
    final issues = parseSource(
      '''
      void nested_async_method() {
        var method = () async {
            if (condition) {}      // +1
        };
      }
      ''',
    );

    expect(issues.first.complexity, equals(1));
  });
}
