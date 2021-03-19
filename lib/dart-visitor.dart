import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

String nodeType(AstNode node) => '${node.runtimeType}'.replaceAll('Impl', '');

class RootAstVisitor extends UnifyingAstVisitor<dynamic> {
  ///检查Annotation
  bool _checkAnnotation(NodeList<Annotation> metadata, String check) {
    var annotations = _safelyVisitNodeList(metadata);
    for (var a in annotations) {
      if (a['annotation'].contains(check)) {
        return true;
      }
    }
    return false;
  }

  /// 遍历节点
  dynamic _safelyVisitNode(AstNode? node) {
    if (node != null) {
      var res = node.accept(this);
      if (res == null) {
        assert(false, '\nerror! \n\t${node.runtimeType}!');
      }
      return res;
    }

    return null;
  }

  /// 遍历节点列表
  List<dynamic> _safelyVisitNodeList(NodeList<AstNode>? nodes) {
    var maps = <Map>[];
    if (nodes != null) {
      var size = nodes.length;
      for (var i = 0; i < size; i++) {
        var node = nodes[i];
        var res = node.accept(this);
        if (res != null) {
          maps.add(res);
        }
      }
    }
    return maps;
  }

  @override
  dynamic visitCompilationUnit(CompilationUnit node) {
    return {
      '_': nodeType(node),
      'import': _safelyVisitNodeList(node.directives),
      'top': _safelyVisitNodeList(node.declarations),
    };
  }

  @override
  dynamic visitImportDirective(ImportDirective node) {
    return {
      '_': nodeType(node),
      'prefix': node.prefix?.name,
      'id': node.uri.toString(),
    };
  }

  @override
  dynamic visitAnnotation(Annotation node) {
    return {'_': nodeType(node), 'annotation': node.name.name};
  }

  @override
  dynamic visitFunctionTypeAlias(FunctionTypeAlias node) {
    return {
      '_': nodeType(node),
      'name': node.name.name,
      'params': _safelyVisitNode(node.parameters),
    };
  }

  @override
  dynamic visitGenericTypeAlias(GenericTypeAlias node) {
    return {
      '_': nodeType(node),
      'name': node.name.name,
      'params': _safelyVisitNode(node.functionType?.parameters),
    };
  }


  @override
  dynamic visitClassTypeAlias(ClassTypeAlias node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitClassDeclaration(ClassDeclaration node) {
    //不关心abstract关键字

    //私有类
    // if (Identifier.isPrivateName(node.name.name)) {
    //   return {};
    // }
    return {
      '_': nodeType(node),
      'raw': node.toString(),
      'name': node.name.name,
      'generic': _safelyVisitNode(node.typeParameters),
      'super': _safelyVisitNode(node.extendsClause),
      'meta': _safelyVisitNodeList(node.metadata),
      'members': _safelyVisitNodeList(node.members),
      'identifiers': node.accept(IdentifierASTVisitor()),
      'abstract?': node.abstractKeyword != null,
      'test?' : _checkAnnotation(node.metadata, 'visibleForTesting')
    };
  }

  @override
  dynamic visitExtendsClause(ExtendsClause node) {
    var name = node.superclass.name.name;
    if (name.contains('.')) {
      var idx = name.lastIndexOf('.');
      name = name.substring(idx + 1);
    }
    return name;
  }

  @override
  dynamic visitConstructorFieldInitializer(ConstructorFieldInitializer node) {
    return {'_': nodeType(node), 'init': node.expression.toString()};
  }

  @override
  dynamic visitConstructorDeclaration(ConstructorDeclaration node) {
    // print('ctor: ${node.parameters}');
    return {
      '_': nodeType(node),
      'name': node.name?.name,
      'params': _safelyVisitNode(node.parameters),
      'init': _safelyVisitNodeList(node.initializers),
      'body': node.body.toString(),
      'params_raw': node.parameters.toString(),
      'factory?':
          node.factoryKeyword != null || node.redirectedConstructor != null,
      'deprecated?': _checkAnnotation(node.metadata, 'Deprecated'),
    };
  }

  @override
  dynamic visitAssertInitializer(AssertInitializer node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitAssertStatement(AssertStatement node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitExpressionFunctionBody(ExpressionFunctionBody node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitMixinDeclaration(MixinDeclaration node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitEnumDeclaration(EnumDeclaration node) {
    var enums = <String>[];
    node.constants.forEach((element) {
      enums.add(element.name.name);
    });
    return {
      '_': nodeType(node),
      'name': node.name.name,
      'meta': _safelyVisitNodeList(node.metadata),
      'enums': enums
    };
  }

  @override
  dynamic visitEnumConstantDeclaration(EnumConstantDeclaration node) {
    return node.name.name;
  }

  @override
  dynamic visitIfStatement(IfStatement node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitForStatement(ForStatement node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitIntegerLiteral(IntegerLiteral node) {
    return {'type': 'int', 'value': node.value.toString()};
  }

  @override
  dynamic visitBooleanLiteral(BooleanLiteral node) {
    return {'type': 'bool', 'value': node.value.toString()};
  }

  @override
  dynamic visitDoubleLiteral(DoubleLiteral node) {
    return {'type': 'double', 'value': node.value.toString()};
  }

  @override
  dynamic visitSimpleStringLiteral(SimpleStringLiteral node) {
    return {'type': 'String', 'value': node.value};
  }

  @override
  dynamic visitListLiteral(ListLiteral node) {
    return {'_': nodeType(node), 'list': _safelyVisitNodeList(node.elements)};
  }

  @override
  dynamic visitSetOrMapLiteral(SetOrMapLiteral node) {
    return {'_': nodeType(node), 'raw': node.elements.toString()};
  }

  @override
  dynamic visitWhileStatement(WhileStatement node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitExpressionStatement(ExpressionStatement node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitSwitchStatement(SwitchStatement node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitTypeParameter(TypeParameter node) {
    return {'name': node.name.name, 'type': node.bound?.toString()};
  }

  @override
  dynamic visitTypeParameterList(TypeParameterList node) {
    // return {
    //   '_': nodeType(node),
    //   'types':
    // };
    return _safelyVisitNodeList(node.typeParameters);
  }

  @override
  dynamic visitSuperConstructorInvocation(SuperConstructorInvocation node) {
    return {
      'body': node.toString(),
      '_': nodeType(node),
    };
  }

  @override
  dynamic visitFieldDeclaration(FieldDeclaration node) {
    return {
      '_': nodeType(node),
      'static': node.staticKeyword != null,
      'fields': _safelyVisitNode(node.fields),
      'protected?': _checkAnnotation(node.metadata, 'protected'),
      'deprecated?': _checkAnnotation(node.metadata, 'Deprecated'),
    };
  }

  @override
  dynamic visitMethodInvocation(MethodInvocation node) {
    var ret = node.accept(IdentifierASTVisitor()) ?? [];
    return {'_': nodeType(node), 'identifiers': ret};
  }

  @override
  dynamic visitMethodDeclaration(MethodDeclaration node) {
    return {
      '_': nodeType(node),
      'static': node.isStatic,
      'ret': node.returnType.toString(),
      'name': node.name.toString(),
      'operator?': node.operatorKeyword != null,
      'type': _safelyVisitNode(node.typeParameters),
      'params': _safelyVisitNode(node.parameters),
      'body': node.body.toString(),
      'identifiers': node.accept(IdentifierASTVisitor()),
      'raw': node.toString(),
      'getter?': node.isGetter,
      'setter?': node.isSetter,
      'test?': _checkAnnotation(node.metadata, 'visibleForTesting'),
      'protected?': _checkAnnotation(node.metadata, 'protected'),
      'deprecated?': _checkAnnotation(node.metadata, 'Deprecated'),
    };
  }

  @override
  dynamic visitBlock(Block node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitBlockFunctionBody(BlockFunctionBody node) {
    return _safelyVisitNode(node.block);
  }

  @override
  dynamic visitVariableDeclaration(VariableDeclaration node) {
    return {
      '_': nodeType(node),
      'name': node.name.name,
      'final?': node.isFinal,
      'const?': node.isConst,
      'init': _safelyVisitNode(node.initializer),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitVariableDeclarationStatement(VariableDeclarationStatement node) {
    return _safelyVisitNode(node.variables);
  }

  @override
  dynamic visitTopLevelVariableDeclaration(TopLevelVariableDeclaration node) {
    return {'_': nodeType(node), 'var': _safelyVisitNode(node.variables)};
  }

  @override
  dynamic visitVariableDeclarationList(VariableDeclarationList node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
      'type': node.type?.toString(),
      'vars': node.variables.map((e) => _safelyVisitNode(e)).toList(),
    };
  }

  @override
  dynamic visitSimpleIdentifier(SimpleIdentifier node) {
    return {'_': nodeType(node), 'identifier': node.name};
  }

  @override
  dynamic visitPrefixedIdentifier(PrefixedIdentifier node) {
    return {
      '_': nodeType(node),
      'prefix': node.prefix.name,
      'identifier': node.identifier.name
    };
  }

  @override
  dynamic visitFunctionDeclaration(FunctionDeclaration node) {
    return {
      '_': nodeType(node),
      'id': _safelyVisitNode(node.name),
      'expression': _safelyVisitNode(node.functionExpression),
      'identifiers': node.accept(IdentifierASTVisitor()),
      'raw': node.toString()
    };
  }

  @override
  dynamic visitFunctionDeclarationStatement(FunctionDeclarationStatement node) {
    return _safelyVisitNode(node.functionDeclaration);
  }

  @override
  dynamic visitSimpleFormalParameter(SimpleFormalParameter node) {
    return {
      '_': nodeType(node),
      'type': node.type.toString(),
      'name': node.identifier!.name,
      'pos?': node.isPositional,
      'named?': node.isNamed,
      'optional?': node.isOptional,
      'required?': node.isRequired,
    };
  }

  @override
  dynamic visitFieldFormalParameter(FieldFormalParameter node) {
    return {
      '_': nodeType(node),
      'type': node.type?.toString(),
      'name': node.identifier.name,
      'this?': node.thisKeyword.toString() == 'this',
      'pos?': node.isPositional,
      'named?': node.isNamed,
      'optional?': node.isOptional,
      'required?': node.isRequired,
    };
  }

  @override
  dynamic visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) {
    return {
      '_': nodeType(node),
      'ret': node.returnType.toString(),
      'name': node.identifier.name,
      'pos?': node.isPositional,
      'named?': node.isNamed,
      'optional?': node.isOptional,
      'required?': node.isRequired,
    };
  }

  @override
  dynamic visitDefaultFormalParameter(DefaultFormalParameter node) {
    var identifiers = node.defaultValue?.accept(IdentifierASTVisitor()) ?? [];
    return {
      '_': nodeType(node),
      'param': _safelyVisitNode(node.parameter),
      'default': node.defaultValue?.toString(),
      'default_identifiers': identifiers,
    };
  }

  @override
  dynamic visitFormalParameterList(FormalParameterList node) {
    return _safelyVisitNodeList(node.parameters);
  }

  @override
  dynamic visitTypeName(TypeName node) {
    return node.name.name;
  }

  @override
  dynamic visitReturnStatement(ReturnStatement node) {
    return node.expression.toString();
  }

  @override
  dynamic visitPostfixExpression(PostfixExpression node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitParenthesizedExpression(ParenthesizedExpression node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitBinaryExpression(BinaryExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
      'left': _safelyVisitNode(node.leftOperand),
      'right': _safelyVisitNode(node.rightOperand)
    };
  }

  @override
  dynamic visitFunctionExpression(FunctionExpression node) {
    return {
      'type': 'FunctionExpression',
      'parameters': _safelyVisitNode(node.parameters),
      'typeParameters': _safelyVisitNode(node.typeParameters),
      'body': _safelyVisitNode(node.body),
    };
  }

  @override
  dynamic visitPrefixExpression(PrefixExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitAsExpression(AsExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitAssignmentExpression(AssignmentExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitAwaitExpression(AwaitExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitCascadeExpression(CascadeExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitConditionalExpression(ConditionalExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitIndexExpression(IndexExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitInterpolationExpression(InterpolationExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitIsExpression(IsExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitNamedExpression(NamedExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitRethrowExpression(RethrowExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitSuperExpression(SuperExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitThisExpression(ThisExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitThrowExpression(ThrowExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitInstanceCreationExpression(InstanceCreationExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitForPartsWithExpression(ForPartsWithExpression node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitRedirectingConstructorInvocation(
      RedirectingConstructorInvocation node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }

  @override
  dynamic visitNode(AstNode node) {
    return {
      '_': nodeType(node),
      'raw': node.toString(),
    };
  }
}

class IdentifierASTVisitor extends UnifyingAstVisitor<List<String>> {
  /// 遍历节点
  dynamic _safelyVisitNode(AstNode? node) {
    if (node != null) {
      var res = node.accept(this);
      if (res == null) {
        assert(false, '\nerror! \n\t${node.runtimeType}!');
      }
      return res;
    }

    return null;
  }

  /// 遍历节点列表
  List<String> _safelyVisitNodeList(NodeList<AstNode>? nodes) {
    var list = <String>[];
    if (nodes != null) {
      var size = nodes.length;
      for (var i = 0; i < size; i++) {
        var node = nodes[i];
        var res = node.accept(this);
        if (res != null) {
          list.addAll(res);
        }
      }
    }
    return list;
  }

  @override
  List<String>? visitAsExpression(AsExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    ret.add(node.type.toString());
    return ret;
  }

  @override
  List<String>? visitAssignmentExpression(AssignmentExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.leftHandSide));
    ret.addAll(_safelyVisitNode(node.rightHandSide));
    return ret;
  }

  @override
  List<String>? visitAwaitExpression(AwaitExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitBinaryExpression(BinaryExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.leftOperand));
    ret.addAll(_safelyVisitNode(node.rightOperand));
    return ret;
  }

  @override
  List<String>? visitCascadeExpression(CascadeExpression node) {
    var ret = <String>[];
    node.cascadeSections.forEach((element) {
      ret.addAll(_safelyVisitNode(element));
    });
    ret.addAll(_safelyVisitNode(node.target));
    return ret;
  }

  @override
  List<String>? visitConditionalExpression(ConditionalExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.condition));
    ret.addAll(_safelyVisitNode(node.elseExpression));
    ret.addAll(_safelyVisitNode(node.thenExpression));

    return ret;
  }

  @override
  List<String>? visitPrefixExpression(PrefixExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.operand));

    return ret;
  }

  @override
  List<String>? visitArgumentList(ArgumentList node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNodeList(node.arguments));
    return ret;
  }

  @override
  List<String>? visitTypeArgumentList(TypeArgumentList node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNodeList(node.arguments));
    return ret;
  }

  @override
  List<String>? visitMethodInvocation(MethodInvocation node) {
    var ret = <String>[];
    ret.add(node.methodName.name);
    ret.addAll(_safelyVisitNode(node.argumentList));
    if (node.typeArguments != null) {
      ret.addAll(_safelyVisitNode(node.typeArguments));
    }

    return ret;
  }

  @override
  List<String>? visitPropertyAccess(PropertyAccess node) {
    var ret = <String>[];
    ret.add(node.propertyName.name);
    ret.addAll(_safelyVisitNode(node.realTarget));
    return ret;
  }

  @override
  List<String>? visitInstanceCreationExpression(
      InstanceCreationExpression node) {
    var ret = <String>[];
    ret.add(node.constructorName.type.name.name);
    ret.addAll(_safelyVisitNode(node.argumentList));
    return ret;
  }

  @override
  List<String>? visitNamedExpression(NamedExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitFunctionExpression(FunctionExpression node) {
    var ret = <String>[];
    if (node.parameters != null) {
      ret.addAll(_safelyVisitNode(node.parameters));
    }
    if (node.typeParameters != null) {
      ret.addAll(_safelyVisitNode(node.typeParameters));
    }
    ret.addAll(_safelyVisitNode(node.body));
    return ret;
  }

  @override
  List<String>? visitBlockFunctionBody(BlockFunctionBody node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.block));
    return ret;
  }

  @override
  List<String>? visitBlock(Block node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNodeList(node.statements));
    return ret;
  }

  @override
  List<String>? visitAssertStatement(AssertStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.condition));
    if (node.message != null) {
      ret.addAll(_safelyVisitNode(node.message));
    }
    return ret;
  }

  @override
  List<String>? visitBreakStatement(BreakStatement node) {
    var ret = <String>[];
    if (node.label != null) {
      ret.add(node.label!.name);
    }
    return ret;
  }

  @override
  List<String>? visitContinueStatement(ContinueStatement node) {
    var ret = <String>[];
    if (node.label != null) {
      ret.add(node.label!.name);
    }
    return ret;
  }

  @override
  List<String>? visitDoStatement(DoStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.condition));
    ret.addAll(_safelyVisitNode(node.body));
    return ret;
  }

  @override
  List<String>? visitEmptyStatement(EmptyStatement node) {
    return <String>[];
  }

  @override
  List<String>? visitExpressionStatement(ExpressionStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitForStatement(ForStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.body));
    return ret;
  }

  @override
  List<String>? visitIfStatement(IfStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.condition));
    if (node.elseStatement != null) {
      ret.addAll(_safelyVisitNode(node.elseStatement));
    }
    ret.addAll(_safelyVisitNode(node.thenStatement));
    return ret;
  }

  @override
  List<String>? visitSwitchStatement(SwitchStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitLabeledStatement(LabeledStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.statement));
    return ret;
  }

  @override
  List<String>? visitReturnStatement(ReturnStatement node) {
    var ret = <String>[];
    if (node.expression != null) {
      ret.addAll(_safelyVisitNode(node.expression));
    }
    return ret;
  }

  @override
  List<String>? visitTryStatement(TryStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.body));
    if (node.finallyBlock != null) {
      ret.addAll(_safelyVisitNode(node.finallyBlock!));
    }
    return ret;
  }

  @override
  List<String>? visitFunctionDeclarationStatement(
      FunctionDeclarationStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.functionDeclaration));
    return ret;
  }

  @override
  List<String>? visitWhileStatement(WhileStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.body));
    ret.addAll(_safelyVisitNode(node.condition));
    return ret;
  }

  @override
  List<String>? visitYieldStatement(YieldStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitVariableDeclarationStatement(
      VariableDeclarationStatement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.variables));
    return ret;
  }

  @override
  List<String>? visitVariableDeclarationList(VariableDeclarationList node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNodeList(node.variables));
    return ret;
  }

  @override
  List<String>? visitVariableDeclaration(VariableDeclaration node) {
    var ret = <String>[];
    ret.add(node.name.name);
    if (node.initializer != null) {
      ret.addAll(_safelyVisitNode(node.initializer));
    }
    return ret;
  }

  @override
  List<String>? visitParenthesizedExpression(ParenthesizedExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitIndexExpression(IndexExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.index));
    ret.addAll(_safelyVisitNode(node.realTarget));
    return ret;
  }

  @override
  List<String>? visitInterpolationExpression(InterpolationExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitIsExpression(IsExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitPostfixExpression(PostfixExpression node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.operand));
    return ret;
  }

  @override
  List<String>? visitPrefixedIdentifier(PrefixedIdentifier node) {
    var ret = <String>[];
    ret.add(node.prefix.name + '.' + node.identifier.name);
    // ret.add(node.prefix.name);
    // ret.add(node.identifier.name);
    return ret;
  }

  @override
  List<String>? visitSimpleIdentifier(SimpleIdentifier node) {
    var ret = <String>[];
    ret.add(node.name);
    return ret;
  }

  @override
  List<String>? visitFunctionExpressionInvocation(
      FunctionExpressionInvocation node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.function));
    ret.addAll(_safelyVisitNode(node.argumentList));
    if (node.typeArguments != null) {
      ret.addAll(_safelyVisitNode(node.typeArguments));
    }
    return ret;
  }

  @override
  List<String>? visitExpressionFunctionBody(ExpressionFunctionBody node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitListLiteral(ListLiteral node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNodeList(node.elements));
    return ret;
  }

  @override
  List<String>? visitMapLiteralEntry(MapLiteralEntry node) {
    var ret = <String>[];
    ret.add(_safelyVisitNode(node.value));
    return ret;
  }

  @override
  List<String>? visitSetOrMapLiteral(SetOrMapLiteral node) {
    var ret = <String>[];
    if (node.isSet) {
      ret.addAll(_safelyVisitNodeList(node.elements));
    }
    return ret;
  }

  @override
  List<String>? visitFormalParameterList(FormalParameterList node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNodeList(node.parameters));
    return ret;
  }

  @override
  List<String>? visitSimpleFormalParameter(SimpleFormalParameter node) {
    var ret = <String>[];
    if (node.identifier != null) {
      ret.add(node.identifier!.name);
    }
    return ret;
  }

  @override
  List<String>? visitThisExpression(ThisExpression node) {
    var ret = <String>[];
    return ret;
  }

  @override
  List<String>? visitTypeName(TypeName node) {
    var ret = <String>[];
    ret.add(node.name.name);
    return ret;
  }

  @override
  List<String>? visitFunctionDeclaration(FunctionDeclaration node) {
    var ret = <String>[];
    ret.add(node.name.name);
    ret.addAll(_safelyVisitNode(node.functionExpression));
    return ret;
  }

  @override
  List<String>? visitDefaultFormalParameter(DefaultFormalParameter node) {
    var ret = <String>[];
    if (node.defaultValue != null) {
      ret.addAll(_safelyVisitNode(node.defaultValue));
    }
    ret.addAll(_safelyVisitNode(node.parameter));
    return ret;
  }

  @override
  List<String>? visitFunctionTypedFormalParameter(
      FunctionTypedFormalParameter node) {
    var ret = <String>[];
    ret.add(node.identifier.name);
    ret.addAll(_safelyVisitNode(node.parameters));
    if (node.typeParameters != null) {
      ret.add(_safelyVisitNode(node.typeParameters));
    }
    return ret;
  }

  @override
  List<String>? visitTypeParameter(TypeParameter node) {
    return [node.name.name];
  }

  @override
  List<String>? visitTypeParameterList(TypeParameterList node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNodeList(node.typeParameters));
    return ret;
  }

  @override
  List<String>? visitIfElement(IfElement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.condition));
    return ret;
  }

  @override
  List<String>? visitForElement(ForElement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.body));
    return ret;
  }

  @override
  List<String>? visitSpreadElement(SpreadElement node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitMethodDeclaration(MethodDeclaration node) {
    var ret = <String>[];
    ret.add(node.name.name);
    ret.addAll(_safelyVisitNode(node.body));
    if (node.parameters != null) {
      ret.addAll(_safelyVisitNode(node.parameters));
    }
    return ret;
  }

  @override
  List<String>? visitClassDeclaration(ClassDeclaration node) {
    var ret = <String>[];
    if (node.extendsClause != null) {
      ret.addAll(_safelyVisitNode(node.extendsClause));
    }
    ret.addAll(_safelyVisitNodeList(node.members));
    return ret;
  }

  @override
  List<String>? visitExtendsClause(ExtendsClause node) {
    return [node.superclass.name.name];
  }

  @override
  List<String>? visitConstructorDeclaration(ConstructorDeclaration node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.body));
    ret.addAll(_safelyVisitNodeList(node.initializers));

    return ret;
  }

  @override
  List<String>? visitSuperConstructorInvocation(
      SuperConstructorInvocation node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.argumentList));
    return ret;
  }

  @override
  List<String>? visitConstructorFieldInitializer(
      ConstructorFieldInitializer node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.expression));
    return ret;
  }

  @override
  List<String>? visitFieldDeclaration(FieldDeclaration node) {
    var ret = <String>[];
    ret.addAll(_safelyVisitNode(node.fields));
    return ret;
  }

  @override
  List<String>? visitRedirectingConstructorInvocation(
      RedirectingConstructorInvocation node) {
    var ret = <String>[];
    if (node.constructorName != null) {
      ret.add(node.constructorName!.name);
    }
    ret.addAll(_safelyVisitNode(node.argumentList));

    return ret;
  }

  @override
  List<String>? visitEnumDeclaration(EnumDeclaration node) {
    var ret = <String>[];
    ret.add(node.name.name);
    ret.addAll(_safelyVisitNodeList(node.constants));

    return ret;
  }

  @override
  List<String>? visitEnumConstantDeclaration(EnumConstantDeclaration node) {
    var ret = <String>[];
    ret.add(node.name.name);
    return ret;
  }

  @override
  List<String>? visitNode(AstNode node) {
    if (node is BooleanLiteral ||
        node is IntegerLiteral ||
        node is SimpleStringLiteral ||
        node is DoubleLiteral ||
        node is NullLiteral ||
        node is AdjacentStrings ||
        node is StringInterpolation ||
        node is ThrowExpression ||
        node is SuperExpression ||
        node is EmptyFunctionBody ||
        node is NativeFunctionBody ||
        node is AssertInitializer) {
      return [];
    }
    assert(false, 'Unhandled ${nodeType(node)}');
  }
}
