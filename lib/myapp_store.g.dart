// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myapp_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyappStore on _MyappStore, Store {
  final _$isLoadingAtom = Atom(name: '_MyappStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$newTextAtom = Atom(name: '_MyappStore.newText');

  @override
  String get newText {
    _$newTextAtom.reportRead();
    return super.newText;
  }

  @override
  set newText(String value) {
    _$newTextAtom.reportWrite(value, super.newText, () {
      super.newText = value;
    });
  }

  final _$fieldTextAtom = Atom(name: '_MyappStore.fieldText');

  @override
  String get fieldText {
    _$fieldTextAtom.reportRead();
    return super.fieldText;
  }

  @override
  set fieldText(String value) {
    _$fieldTextAtom.reportWrite(value, super.fieldText, () {
      super.fieldText = value;
    });
  }

  final _$_MyappStoreActionController = ActionController(name: '_MyappStore');

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_MyappStoreActionController.startAction(
        name: '_MyappStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_MyappStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNewText(String value) {
    final _$actionInfo = _$_MyappStoreActionController.startAction(
        name: '_MyappStore.setNewText');
    try {
      return super.setNewText(value);
    } finally {
      _$_MyappStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFieldtext(String value) {
    final _$actionInfo = _$_MyappStoreActionController.startAction(
        name: '_MyappStore.setFieldtext');
    try {
      return super.setFieldtext(value);
    } finally {
      _$_MyappStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
newText: ${newText},
fieldText: ${fieldText}
    ''';
  }
}
