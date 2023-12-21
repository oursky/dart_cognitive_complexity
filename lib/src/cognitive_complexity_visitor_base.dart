import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

abstract class CognitiveComplexityVisitorBase extends UnifyingAstVisitor {
  onEnterNode(AstNode node);
  onLeaveNode(AstNode node);
  @override
  visitAdjacentStrings(AdjacentStrings node) {
    onEnterNode(node);
    super.visitAdjacentStrings(node);
    onLeaveNode(node);
  }

  @override
  visitAnnotation(Annotation node) {
    onEnterNode(node);
    super.visitAnnotation(node);
    onLeaveNode(node);
  }

  @override
  visitArgumentList(ArgumentList node) {
    onEnterNode(node);
    super.visitArgumentList(node);
    onLeaveNode(node);
  }

  @override
  visitAsExpression(AsExpression node) {
    onEnterNode(node);
    super.visitAsExpression(node);
    onLeaveNode(node);
  }

  @override
  visitAssertInitializer(AssertInitializer node) {
    onEnterNode(node);
    super.visitAssertInitializer(node);
    onLeaveNode(node);
  }

  @override
  visitAssertStatement(AssertStatement node) {
    onEnterNode(node);
    super.visitAssertStatement(node);
    onLeaveNode(node);
  }

  @override
  visitAssignedVariablePattern(AssignedVariablePattern node) {
    onEnterNode(node);
    super.visitAssignedVariablePattern(node);
    onLeaveNode(node);
  }

  @override
  visitAssignmentExpression(AssignmentExpression node) {
    onEnterNode(node);
    super.visitAssignmentExpression(node);
    onLeaveNode(node);
  }

  @override
  visitAugmentationImportDirective(AugmentationImportDirective node) {
    onEnterNode(node);
    super.visitAugmentationImportDirective(node);
    onLeaveNode(node);
  }

  @override
  visitAwaitExpression(AwaitExpression node) {
    onEnterNode(node);
    super.visitAwaitExpression(node);
    onLeaveNode(node);
  }

  @override
  visitBinaryExpression(BinaryExpression node) {
    onEnterNode(node);
    super.visitBinaryExpression(node);
    onLeaveNode(node);
  }

  @override
  visitBlock(Block node) {
    onEnterNode(node);
    super.visitBlock(node);
    onLeaveNode(node);
  }

  @override
  visitBlockFunctionBody(BlockFunctionBody node) {
    onEnterNode(node);
    super.visitBlockFunctionBody(node);
    onLeaveNode(node);
  }

  @override
  visitBooleanLiteral(BooleanLiteral node) {
    onEnterNode(node);
    super.visitBooleanLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitBreakStatement(BreakStatement node) {
    onEnterNode(node);
    super.visitBreakStatement(node);
    onLeaveNode(node);
  }

  @override
  visitCascadeExpression(CascadeExpression node) {
    onEnterNode(node);
    super.visitCascadeExpression(node);
    onLeaveNode(node);
  }

  @override
  visitCaseClause(CaseClause node) {
    onEnterNode(node);
    super.visitCaseClause(node);
    onLeaveNode(node);
  }

  @override
  visitCastPattern(CastPattern node) {
    onEnterNode(node);
    super.visitCastPattern(node);
    onLeaveNode(node);
  }

  @override
  visitCatchClause(CatchClause node) {
    onEnterNode(node);
    super.visitCatchClause(node);
    onLeaveNode(node);
  }

  @override
  visitCatchClauseParameter(CatchClauseParameter node) {
    onEnterNode(node);
    super.visitCatchClauseParameter(node);
    onLeaveNode(node);
  }

  @override
  visitClassDeclaration(ClassDeclaration node) {
    onEnterNode(node);
    super.visitClassDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitClassTypeAlias(ClassTypeAlias node) {
    onEnterNode(node);
    super.visitClassTypeAlias(node);
    onLeaveNode(node);
  }

  @override
  visitComment(Comment node) {
    onEnterNode(node);
    super.visitComment(node);
    onLeaveNode(node);
  }

  @override
  visitCommentReference(CommentReference node) {
    onEnterNode(node);
    super.visitCommentReference(node);
    onLeaveNode(node);
  }

  @override
  visitCompilationUnit(CompilationUnit node) {
    onEnterNode(node);
    super.visitCompilationUnit(node);
    onLeaveNode(node);
  }

  @override
  visitConditionalExpression(ConditionalExpression node) {
    onEnterNode(node);
    super.visitConditionalExpression(node);
    onLeaveNode(node);
  }

  @override
  visitConfiguration(Configuration node) {
    onEnterNode(node);
    super.visitConfiguration(node);
    onLeaveNode(node);
  }

  @override
  visitConstantPattern(ConstantPattern node) {
    onEnterNode(node);
    super.visitConstantPattern(node);
    onLeaveNode(node);
  }

  @override
  visitConstructorDeclaration(ConstructorDeclaration node) {
    onEnterNode(node);
    super.visitConstructorDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitConstructorFieldInitializer(ConstructorFieldInitializer node) {
    onEnterNode(node);
    super.visitConstructorFieldInitializer(node);
    onLeaveNode(node);
  }

  @override
  visitConstructorName(ConstructorName node) {
    onEnterNode(node);
    super.visitConstructorName(node);
    onLeaveNode(node);
  }

  @override
  visitConstructorReference(ConstructorReference node) {
    onEnterNode(node);
    super.visitConstructorReference(node);
    onLeaveNode(node);
  }

  @override
  visitConstructorSelector(ConstructorSelector node) {
    onEnterNode(node);
    super.visitConstructorSelector(node);
    onLeaveNode(node);
  }

  @override
  visitContinueStatement(ContinueStatement node) {
    onEnterNode(node);
    super.visitContinueStatement(node);
    onLeaveNode(node);
  }

  @override
  visitDeclaredIdentifier(DeclaredIdentifier node) {
    onEnterNode(node);
    super.visitDeclaredIdentifier(node);
    onLeaveNode(node);
  }

  @override
  visitDeclaredVariablePattern(DeclaredVariablePattern node) {
    onEnterNode(node);
    super.visitDeclaredVariablePattern(node);
    onLeaveNode(node);
  }

  @override
  visitDefaultFormalParameter(DefaultFormalParameter node) {
    onEnterNode(node);
    super.visitDefaultFormalParameter(node);
    onLeaveNode(node);
  }

  @override
  visitDoStatement(DoStatement node) {
    onEnterNode(node);
    super.visitDoStatement(node);
    onLeaveNode(node);
  }

  @override
  visitDottedName(DottedName node) {
    onEnterNode(node);
    super.visitDottedName(node);
    onLeaveNode(node);
  }

  @override
  visitDoubleLiteral(DoubleLiteral node) {
    onEnterNode(node);
    super.visitDoubleLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitEmptyFunctionBody(EmptyFunctionBody node) {
    onEnterNode(node);
    super.visitEmptyFunctionBody(node);
    onLeaveNode(node);
  }

  @override
  visitEmptyStatement(EmptyStatement node) {
    onEnterNode(node);
    super.visitEmptyStatement(node);
    onLeaveNode(node);
  }

  @override
  visitEnumConstantArguments(EnumConstantArguments node) {
    onEnterNode(node);
    super.visitEnumConstantArguments(node);
    onLeaveNode(node);
  }

  @override
  visitEnumConstantDeclaration(EnumConstantDeclaration node) {
    onEnterNode(node);
    super.visitEnumConstantDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitEnumDeclaration(EnumDeclaration node) {
    onEnterNode(node);
    super.visitEnumDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitExportDirective(ExportDirective node) {
    onEnterNode(node);
    super.visitExportDirective(node);
    onLeaveNode(node);
  }

  @override
  visitExpressionFunctionBody(ExpressionFunctionBody node) {
    onEnterNode(node);
    super.visitExpressionFunctionBody(node);
    onLeaveNode(node);
  }

  @override
  visitExpressionStatement(ExpressionStatement node) {
    onEnterNode(node);
    super.visitExpressionStatement(node);
    onLeaveNode(node);
  }

  @override
  visitExtendsClause(ExtendsClause node) {
    onEnterNode(node);
    super.visitExtendsClause(node);
    onLeaveNode(node);
  }

  @override
  visitExtensionDeclaration(ExtensionDeclaration node) {
    onEnterNode(node);
    super.visitExtensionDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitExtensionOverride(ExtensionOverride node) {
    onEnterNode(node);
    super.visitExtensionOverride(node);
    onLeaveNode(node);
  }

  @override
  visitFieldDeclaration(FieldDeclaration node) {
    onEnterNode(node);
    super.visitFieldDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitFieldFormalParameter(FieldFormalParameter node) {
    onEnterNode(node);
    super.visitFieldFormalParameter(node);
    onLeaveNode(node);
  }

  @override
  visitForEachPartsWithDeclaration(ForEachPartsWithDeclaration node) {
    onEnterNode(node);
    super.visitForEachPartsWithDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitForEachPartsWithIdentifier(ForEachPartsWithIdentifier node) {
    onEnterNode(node);
    super.visitForEachPartsWithIdentifier(node);
    onLeaveNode(node);
  }

  @override
  visitForEachPartsWithPattern(ForEachPartsWithPattern node) {
    onEnterNode(node);
    super.visitForEachPartsWithPattern(node);
    onLeaveNode(node);
  }

  @override
  visitForElement(ForElement node) {
    onEnterNode(node);
    super.visitForElement(node);
    onLeaveNode(node);
  }

  @override
  visitForPartsWithDeclarations(ForPartsWithDeclarations node) {
    onEnterNode(node);
    super.visitForPartsWithDeclarations(node);
    onLeaveNode(node);
  }

  @override
  visitForPartsWithExpression(ForPartsWithExpression node) {
    onEnterNode(node);
    super.visitForPartsWithExpression(node);
    onLeaveNode(node);
  }

  @override
  visitForPartsWithPattern(ForPartsWithPattern node) {
    onEnterNode(node);
    super.visitForPartsWithPattern(node);
    onLeaveNode(node);
  }

  @override
  visitForStatement(ForStatement node) {
    onEnterNode(node);
    super.visitForStatement(node);
    onLeaveNode(node);
  }

  @override
  visitFormalParameterList(FormalParameterList node) {
    onEnterNode(node);
    super.visitFormalParameterList(node);
    onLeaveNode(node);
  }

  @override
  visitFunctionDeclaration(FunctionDeclaration node) {
    onEnterNode(node);
    super.visitFunctionDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitFunctionDeclarationStatement(FunctionDeclarationStatement node) {
    onEnterNode(node);
    super.visitFunctionDeclarationStatement(node);
    onLeaveNode(node);
  }

  @override
  visitFunctionExpression(FunctionExpression node) {
    onEnterNode(node);
    super.visitFunctionExpression(node);
    onLeaveNode(node);
  }

  @override
  visitFunctionExpressionInvocation(FunctionExpressionInvocation node) {
    onEnterNode(node);
    super.visitFunctionExpressionInvocation(node);
    onLeaveNode(node);
  }

  @override
  visitFunctionReference(FunctionReference node) {
    onEnterNode(node);
    super.visitFunctionReference(node);
    onLeaveNode(node);
  }

  @override
  visitFunctionTypeAlias(FunctionTypeAlias node) {
    onEnterNode(node);
    super.visitFunctionTypeAlias(node);
    onLeaveNode(node);
  }

  @override
  visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) {
    onEnterNode(node);
    super.visitFunctionTypedFormalParameter(node);
    onLeaveNode(node);
  }

  @override
  visitGenericFunctionType(GenericFunctionType node) {
    onEnterNode(node);
    super.visitGenericFunctionType(node);
    onLeaveNode(node);
  }

  @override
  visitGenericTypeAlias(GenericTypeAlias node) {
    onEnterNode(node);
    super.visitGenericTypeAlias(node);
    onLeaveNode(node);
  }

  @override
  visitGuardedPattern(GuardedPattern node) {
    onEnterNode(node);
    super.visitGuardedPattern(node);
    onLeaveNode(node);
  }

  @override
  visitHideCombinator(HideCombinator node) {
    onEnterNode(node);
    super.visitHideCombinator(node);
    onLeaveNode(node);
  }

  @override
  visitIfElement(IfElement node) {
    onEnterNode(node);
    super.visitIfElement(node);
    onLeaveNode(node);
  }

  @override
  visitIfStatement(IfStatement node) {
    onEnterNode(node);
    super.visitIfStatement(node);
    onLeaveNode(node);
  }

  @override
  visitImplementsClause(ImplementsClause node) {
    onEnterNode(node);
    super.visitImplementsClause(node);
    onLeaveNode(node);
  }

  @override
  visitImplicitCallReference(ImplicitCallReference node) {
    onEnterNode(node);
    super.visitImplicitCallReference(node);
    onLeaveNode(node);
  }

  @override
  visitImportDirective(ImportDirective node) {
    onEnterNode(node);
    super.visitImportDirective(node);
    onLeaveNode(node);
  }

  @override
  visitImportPrefixReference(ImportPrefixReference node) {
    onEnterNode(node);
    super.visitImportPrefixReference(node);
    onLeaveNode(node);
  }

  @override
  visitIndexExpression(IndexExpression node) {
    onEnterNode(node);
    super.visitIndexExpression(node);
    onLeaveNode(node);
  }

  @override
  visitInstanceCreationExpression(InstanceCreationExpression node) {
    onEnterNode(node);
    super.visitInstanceCreationExpression(node);
    onLeaveNode(node);
  }

  @override
  visitIntegerLiteral(IntegerLiteral node) {
    onEnterNode(node);
    super.visitIntegerLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitInterpolationExpression(InterpolationExpression node) {
    onEnterNode(node);
    super.visitInterpolationExpression(node);
    onLeaveNode(node);
  }

  @override
  visitInterpolationString(InterpolationString node) {
    onEnterNode(node);
    super.visitInterpolationString(node);
    onLeaveNode(node);
  }

  @override
  visitIsExpression(IsExpression node) {
    onEnterNode(node);
    super.visitIsExpression(node);
    onLeaveNode(node);
  }

  @override
  visitLabel(Label node) {
    onEnterNode(node);
    super.visitLabel(node);
    onLeaveNode(node);
  }

  @override
  visitLabeledStatement(LabeledStatement node) {
    onEnterNode(node);
    super.visitLabeledStatement(node);
    onLeaveNode(node);
  }

  @override
  visitLibraryAugmentationDirective(LibraryAugmentationDirective node) {
    onEnterNode(node);
    super.visitLibraryAugmentationDirective(node);
    onLeaveNode(node);
  }

  @override
  visitLibraryDirective(LibraryDirective node) {
    onEnterNode(node);
    super.visitLibraryDirective(node);
    onLeaveNode(node);
  }

  @override
  visitLibraryIdentifier(LibraryIdentifier node) {
    onEnterNode(node);
    super.visitLibraryIdentifier(node);
    onLeaveNode(node);
  }

  @override
  visitListLiteral(ListLiteral node) {
    onEnterNode(node);
    super.visitListLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitListPattern(ListPattern node) {
    onEnterNode(node);
    super.visitListPattern(node);
    onLeaveNode(node);
  }

  @override
  visitLogicalAndPattern(LogicalAndPattern node) {
    onEnterNode(node);
    super.visitLogicalAndPattern(node);
    onLeaveNode(node);
  }

  @override
  visitLogicalOrPattern(LogicalOrPattern node) {
    onEnterNode(node);
    super.visitLogicalOrPattern(node);
    onLeaveNode(node);
  }

  @override
  visitMapLiteralEntry(MapLiteralEntry node) {
    onEnterNode(node);
    super.visitMapLiteralEntry(node);
    onLeaveNode(node);
  }

  @override
  visitMapPattern(MapPattern node) {
    onEnterNode(node);
    super.visitMapPattern(node);
    onLeaveNode(node);
  }

  @override
  visitMapPatternEntry(MapPatternEntry node) {
    onEnterNode(node);
    super.visitMapPatternEntry(node);
    onLeaveNode(node);
  }

  @override
  visitMethodDeclaration(MethodDeclaration node) {
    onEnterNode(node);
    super.visitMethodDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitMethodInvocation(MethodInvocation node) {
    onEnterNode(node);
    super.visitMethodInvocation(node);
    onLeaveNode(node);
  }

  @override
  visitMixinDeclaration(MixinDeclaration node) {
    onEnterNode(node);
    super.visitMixinDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitNamedExpression(NamedExpression node) {
    onEnterNode(node);
    super.visitNamedExpression(node);
    onLeaveNode(node);
  }

  @override
  visitNamedType(NamedType node) {
    onEnterNode(node);
    super.visitNamedType(node);
    onLeaveNode(node);
  }

  @override
  visitNativeClause(NativeClause node) {
    onEnterNode(node);
    super.visitNativeClause(node);
    onLeaveNode(node);
  }

  @override
  visitNativeFunctionBody(NativeFunctionBody node) {
    onEnterNode(node);
    super.visitNativeFunctionBody(node);
    onLeaveNode(node);
  }

  @override
  visitNullAssertPattern(NullAssertPattern node) {
    onEnterNode(node);
    super.visitNullAssertPattern(node);
    onLeaveNode(node);
  }

  @override
  visitNullCheckPattern(NullCheckPattern node) {
    onEnterNode(node);
    super.visitNullCheckPattern(node);
    onLeaveNode(node);
  }

  @override
  visitNullLiteral(NullLiteral node) {
    onEnterNode(node);
    super.visitNullLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitObjectPattern(ObjectPattern node) {
    onEnterNode(node);
    super.visitObjectPattern(node);
    onLeaveNode(node);
  }

  @override
  visitOnClause(OnClause node) {
    onEnterNode(node);
    super.visitOnClause(node);
    onLeaveNode(node);
  }

  @override
  visitParenthesizedExpression(ParenthesizedExpression node) {
    onEnterNode(node);
    super.visitParenthesizedExpression(node);
    onLeaveNode(node);
  }

  @override
  visitParenthesizedPattern(ParenthesizedPattern node) {
    onEnterNode(node);
    super.visitParenthesizedPattern(node);
    onLeaveNode(node);
  }

  @override
  visitPartDirective(PartDirective node) {
    onEnterNode(node);
    super.visitPartDirective(node);
    onLeaveNode(node);
  }

  @override
  visitPartOfDirective(PartOfDirective node) {
    onEnterNode(node);
    super.visitPartOfDirective(node);
    onLeaveNode(node);
  }

  @override
  visitPatternAssignment(PatternAssignment node) {
    onEnterNode(node);
    super.visitPatternAssignment(node);
    onLeaveNode(node);
  }

  @override
  visitPatternField(PatternField node) {
    onEnterNode(node);
    super.visitPatternField(node);
    onLeaveNode(node);
  }

  @override
  visitPatternFieldName(PatternFieldName node) {
    onEnterNode(node);
    super.visitPatternFieldName(node);
    onLeaveNode(node);
  }

  @override
  visitPatternVariableDeclaration(PatternVariableDeclaration node) {
    onEnterNode(node);
    super.visitPatternVariableDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitPatternVariableDeclarationStatement(
      PatternVariableDeclarationStatement node) {
    onEnterNode(node);
    super.visitPatternVariableDeclarationStatement(node);
    onLeaveNode(node);
  }

  @override
  visitPostfixExpression(PostfixExpression node) {
    onEnterNode(node);
    super.visitPostfixExpression(node);
    onLeaveNode(node);
  }

  @override
  visitPrefixExpression(PrefixExpression node) {
    onEnterNode(node);
    super.visitPrefixExpression(node);
    onLeaveNode(node);
  }

  @override
  visitPrefixedIdentifier(PrefixedIdentifier node) {
    onEnterNode(node);
    super.visitPrefixedIdentifier(node);
    onLeaveNode(node);
  }

  @override
  visitPropertyAccess(PropertyAccess node) {
    onEnterNode(node);
    super.visitPropertyAccess(node);
    onLeaveNode(node);
  }

  @override
  visitRecordLiteral(RecordLiteral node) {
    onEnterNode(node);
    super.visitRecordLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitRecordPattern(RecordPattern node) {
    onEnterNode(node);
    super.visitRecordPattern(node);
    onLeaveNode(node);
  }

  @override
  visitRecordTypeAnnotation(RecordTypeAnnotation node) {
    onEnterNode(node);
    super.visitRecordTypeAnnotation(node);
    onLeaveNode(node);
  }

  @override
  visitRecordTypeAnnotationNamedField(RecordTypeAnnotationNamedField node) {
    onEnterNode(node);
    super.visitRecordTypeAnnotationNamedField(node);
    onLeaveNode(node);
  }

  @override
  visitRecordTypeAnnotationNamedFields(RecordTypeAnnotationNamedFields node) {
    onEnterNode(node);
    super.visitRecordTypeAnnotationNamedFields(node);
    onLeaveNode(node);
  }

  @override
  visitRecordTypeAnnotationPositionalField(
      RecordTypeAnnotationPositionalField node) {
    onEnterNode(node);
    super.visitRecordTypeAnnotationPositionalField(node);
    onLeaveNode(node);
  }

  @override
  visitRedirectingConstructorInvocation(RedirectingConstructorInvocation node) {
    onEnterNode(node);
    super.visitRedirectingConstructorInvocation(node);
    onLeaveNode(node);
  }

  @override
  visitRelationalPattern(RelationalPattern node) {
    onEnterNode(node);
    super.visitRelationalPattern(node);
    onLeaveNode(node);
  }

  @override
  visitRestPatternElement(RestPatternElement node) {
    onEnterNode(node);
    super.visitRestPatternElement(node);
    onLeaveNode(node);
  }

  @override
  visitRethrowExpression(RethrowExpression node) {
    onEnterNode(node);
    super.visitRethrowExpression(node);
    onLeaveNode(node);
  }

  @override
  visitReturnStatement(ReturnStatement node) {
    onEnterNode(node);
    super.visitReturnStatement(node);
    onLeaveNode(node);
  }

  @override
  visitScriptTag(ScriptTag scriptTag) {
    onEnterNode(scriptTag);
    super.visitScriptTag(scriptTag);
    onLeaveNode(scriptTag);
  }

  @override
  visitSetOrMapLiteral(SetOrMapLiteral node) {
    onEnterNode(node);
    super.visitSetOrMapLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitShowCombinator(ShowCombinator node) {
    onEnterNode(node);
    super.visitShowCombinator(node);
    onLeaveNode(node);
  }

  @override
  visitSimpleFormalParameter(SimpleFormalParameter node) {
    onEnterNode(node);
    super.visitSimpleFormalParameter(node);
    onLeaveNode(node);
  }

  @override
  visitSimpleIdentifier(SimpleIdentifier node) {
    onEnterNode(node);
    super.visitSimpleIdentifier(node);
    onLeaveNode(node);
  }

  @override
  visitSimpleStringLiteral(SimpleStringLiteral node) {
    onEnterNode(node);
    super.visitSimpleStringLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitSpreadElement(SpreadElement node) {
    onEnterNode(node);
    super.visitSpreadElement(node);
    onLeaveNode(node);
  }

  @override
  visitStringInterpolation(StringInterpolation node) {
    onEnterNode(node);
    super.visitStringInterpolation(node);
    onLeaveNode(node);
  }

  @override
  visitSuperConstructorInvocation(SuperConstructorInvocation node) {
    onEnterNode(node);
    super.visitSuperConstructorInvocation(node);
    onLeaveNode(node);
  }

  @override
  visitSuperExpression(SuperExpression node) {
    onEnterNode(node);
    super.visitSuperExpression(node);
    onLeaveNode(node);
  }

  @override
  visitSuperFormalParameter(SuperFormalParameter node) {
    onEnterNode(node);
    super.visitSuperFormalParameter(node);
    onLeaveNode(node);
  }

  @override
  visitSwitchCase(SwitchCase node) {
    onEnterNode(node);
    super.visitSwitchCase(node);
    onLeaveNode(node);
  }

  @override
  visitSwitchDefault(SwitchDefault node) {
    onEnterNode(node);
    super.visitSwitchDefault(node);
    onLeaveNode(node);
  }

  @override
  visitSwitchExpression(SwitchExpression node) {
    onEnterNode(node);
    super.visitSwitchExpression(node);
    onLeaveNode(node);
  }

  @override
  visitSwitchExpressionCase(SwitchExpressionCase node) {
    onEnterNode(node);
    super.visitSwitchExpressionCase(node);
    onLeaveNode(node);
  }

  @override
  visitSwitchPatternCase(SwitchPatternCase node) {
    onEnterNode(node);
    super.visitSwitchPatternCase(node);
    onLeaveNode(node);
  }

  @override
  visitSwitchStatement(SwitchStatement node) {
    onEnterNode(node);
    super.visitSwitchStatement(node);
    onLeaveNode(node);
  }

  @override
  visitSymbolLiteral(SymbolLiteral node) {
    onEnterNode(node);
    super.visitSymbolLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitThisExpression(ThisExpression node) {
    onEnterNode(node);
    super.visitThisExpression(node);
    onLeaveNode(node);
  }

  @override
  visitThrowExpression(ThrowExpression node) {
    onEnterNode(node);
    super.visitThrowExpression(node);
    onLeaveNode(node);
  }

  @override
  visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    onEnterNode(node);
    super.visitTopLevelVariableDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitTryStatement(TryStatement node) {
    onEnterNode(node);
    super.visitTryStatement(node);
    onLeaveNode(node);
  }

  @override
  visitTypeArgumentList(TypeArgumentList node) {
    onEnterNode(node);
    super.visitTypeArgumentList(node);
    onLeaveNode(node);
  }

  @override
  visitTypeLiteral(TypeLiteral node) {
    onEnterNode(node);
    super.visitTypeLiteral(node);
    onLeaveNode(node);
  }

  @override
  visitTypeParameter(TypeParameter node) {
    onEnterNode(node);
    super.visitTypeParameter(node);
    onLeaveNode(node);
  }

  @override
  visitTypeParameterList(TypeParameterList node) {
    onEnterNode(node);
    super.visitTypeParameterList(node);
    onLeaveNode(node);
  }

  @override
  visitVariableDeclaration(VariableDeclaration node) {
    onEnterNode(node);
    super.visitVariableDeclaration(node);
    onLeaveNode(node);
  }

  @override
  visitVariableDeclarationList(VariableDeclarationList node) {
    onEnterNode(node);
    super.visitVariableDeclarationList(node);
    onLeaveNode(node);
  }

  @override
  visitVariableDeclarationStatement(VariableDeclarationStatement node) {
    onEnterNode(node);
    super.visitVariableDeclarationStatement(node);
    onLeaveNode(node);
  }

  @override
  visitWhenClause(WhenClause node) {
    onEnterNode(node);
    super.visitWhenClause(node);
    onLeaveNode(node);
  }

  @override
  visitWhileStatement(WhileStatement node) {
    onEnterNode(node);
    super.visitWhileStatement(node);
    onLeaveNode(node);
  }

  @override
  visitWildcardPattern(WildcardPattern node) {
    onEnterNode(node);
    super.visitWildcardPattern(node);
    onLeaveNode(node);
  }

  @override
  visitWithClause(WithClause node) {
    onEnterNode(node);
    super.visitWithClause(node);
    onLeaveNode(node);
  }

  @override
  visitYieldStatement(YieldStatement node) {
    onEnterNode(node);
    super.visitYieldStatement(node);
    onLeaveNode(node);
  }
}
