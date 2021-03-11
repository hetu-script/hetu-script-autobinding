import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

String nodeType(AstNode node) => '${node.runtimeType}'.replaceAll('Impl', '');

class MyAstVisitor extends SimpleAstVisitor<dynamic> {
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
        } else {
          assert(false,
              '\nerror! please complete visitor: \n\t${node.runtimeType}!');
        }
      }
    }
    return maps;
  }

  @override
  dynamic visitCompilationUnit(CompilationUnit node) {
    return {
      '_': nodeType(node),
      'root': _safelyVisitNodeList(node.declarations)
    };
  }

  @override
  dynamic visitClassTypeAlias(ClassTypeAlias node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitClassDeclaration(ClassDeclaration node) {
    //不关心abstract关键字
    if (node.isAbstract) {
      return {};
    }
    //私有类
    // if (Identifier.isPrivateName(node.name.name)) {
    //   return {};
    // }
    return {
      '_': nodeType(node),
      'name': node.name.name,
      'members': _safelyVisitNodeList(node.members),
    };
  }

  @override
  dynamic visitConstructorDeclaration(ConstructorDeclaration node) {
    return {
      '_': nodeType(node),
      'name': _safelyVisitNode(node.name),
      'params': _safelyVisitNode(node.parameters),
      // 'initializers': _safelyVisitNodeList(node.initializers),
      // 'body': _safelyVisitNode(node.body),
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
  dynamic visitGenericTypeAlias(GenericTypeAlias node) {
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
    return {'_': nodeType(node), 'raw': node.toString()};
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
  dynamic visitParenthesizedExpression(ParenthesizedExpression node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitPrefixedIdentifier(PrefixedIdentifier node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitWhileStatement(WhileStatement node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitFunctionTypedFormalParameter(FunctionTypedFormalParameter node) {
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
  dynamic visitTypeParameterList(TypeParameterList node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitSuperConstructorInvocation(SuperConstructorInvocation node) {
    return {
      'body': node.toString(),
      '_': nodeType(node),
    };
  }

  @override
  dynamic visitPostfixExpression(PostfixExpression node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitFieldDeclaration(FieldDeclaration node) {
    return {
      '_' : nodeType(node),
      'static' : node.staticKeyword != null,
      'fields' : _safelyVisitNode(node.fields)
    };
  }

  @override
  dynamic visitMethodInvocation(MethodInvocation node) {
    return {'_': nodeType(node), 'raw': node.toString()};
  }

  @override
  dynamic visitMethodDeclaration(MethodDeclaration node) {
    return {
      '_': nodeType(node),
      'ret': node.returnType.toString(),
      'name': node.name.toString(),
      'params': _safelyVisitNode(node.parameters),
      'body': node.body.toString()
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
    return {'name': node.name.name, 'init': _safelyVisitNode(node.initializer)};
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
    return {
      'identifier' : node.name
    };
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
  dynamic visitFunctionDeclaration(FunctionDeclaration node) {
    return {
      'type': 'FunctionDeclaration',
      'id': _safelyVisitNode(node.name),
      'expression': _safelyVisitNode(node.functionExpression),
    };
  }

  @override
  dynamic visitFunctionDeclarationStatement(FunctionDeclarationStatement node) {
    return _safelyVisitNode(node.functionDeclaration);
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
  dynamic visitSimpleFormalParameter(SimpleFormalParameter node) {
    return {
      'type': node.type.toString(),
      'name': node.identifier!.name,
      '_': nodeType(node),
    };
  }

  @override
  dynamic visitFieldFormalParameter(FieldFormalParameter node) {
    return {
      'type': node.type.toString(),
      'name': node.identifier.name,
      'this?': node.thisKeyword.toString(),
      '_': nodeType(node),
    };
  }

  @override
  List visitFormalParameterList(FormalParameterList node) {
    return _safelyVisitNodeList(node.parameters);
  }

  @override
  dynamic visitDefaultFormalParameter(DefaultFormalParameter node) {
    return _safelyVisitNode(node.parameter);
  }

  @override
  dynamic visitTypeName(TypeName node) {
    return node.name.name;
  }

  @override
  dynamic visitReturnStatement(ReturnStatement node) {
    return node.expression.toString();
  }
}

//构造代码块Bloc 结构
Map _buildBloc(List body) => {'type': 'BlockStatement', 'body': body};
