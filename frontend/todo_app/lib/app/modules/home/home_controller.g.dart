// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$todoListAtom = Atom(name: '_HomeControllerBase.todoList');

  @override
  List<TodoModel> get todoList {
    _$todoListAtom.context.enforceReadPolicy(_$todoListAtom);
    _$todoListAtom.reportObserved();
    return super.todoList;
  }

  @override
  set todoList(List<TodoModel> value) {
    _$todoListAtom.context.conditionallyRunInAction(() {
      super.todoList = value;
      _$todoListAtom.reportChanged();
    }, _$todoListAtom, name: '${_$todoListAtom.name}_set');
  }

  final _$titleAtom = Atom(name: '_HomeControllerBase.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$contentAtom = Atom(name: '_HomeControllerBase.content');

  @override
  String get content {
    _$contentAtom.context.enforceReadPolicy(_$contentAtom);
    _$contentAtom.reportObserved();
    return super.content;
  }

  @override
  set content(String value) {
    _$contentAtom.context.conditionallyRunInAction(() {
      super.content = value;
      _$contentAtom.reportChanged();
    }, _$contentAtom, name: '${_$contentAtom.name}_set');
  }

  final _$checkAtom = Atom(name: '_HomeControllerBase.check');

  @override
  bool get check {
    _$checkAtom.context.enforceReadPolicy(_$checkAtom);
    _$checkAtom.reportObserved();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.context.conditionallyRunInAction(() {
      super.check = value;
      _$checkAtom.reportChanged();
    }, _$checkAtom, name: '${_$checkAtom.name}_set');
  }

  final _$getDataAsyncAction = AsyncAction('getData');

  @override
  Future getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  final _$postCreateAsyncAction = AsyncAction('postCreate');

  @override
  Future<dynamic> postCreate() {
    return _$postCreateAsyncAction.run(() => super.postCreate());
  }

  final _$deleteTodoAsyncAction = AsyncAction('deleteTodo');

  @override
  Future<dynamic> deleteTodo(TodoModel model) {
    return _$deleteTodoAsyncAction.run(() => super.deleteTodo(model));
  }

  final _$updateTodoAsyncAction = AsyncAction('updateTodo');

  @override
  Future<dynamic> updateTodo({String id}) {
    return _$updateTodoAsyncAction.run(() => super.updateTodo(id: id));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setTitle(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setContent(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setContent(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setCheck(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'todoList: ${todoList.toString()},title: ${title.toString()},content: ${content.toString()},check: ${check.toString()}';
    return '{$string}';
  }
}
