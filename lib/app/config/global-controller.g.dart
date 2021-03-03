// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalController on _GControllersBase, Store {
  final _$isLightThemeGlobalAtom =
      Atom(name: '_GControllersBase.isLightThemeGlobal');

  @override
  bool get isLightThemeGlobal {
    _$isLightThemeGlobalAtom.reportRead();
    return super.isLightThemeGlobal;
  }

  @override
  set isLightThemeGlobal(bool value) {
    _$isLightThemeGlobalAtom.reportWrite(value, super.isLightThemeGlobal, () {
      super.isLightThemeGlobal = value;
    });
  }

  final _$_GControllersBaseActionController =
      ActionController(name: '_GControllersBase');

  @override
  dynamic setisLightThemeGlobal(bool estadoTheme) {
    final _$actionInfo = _$_GControllersBaseActionController.startAction(
        name: '_GControllersBase.setisLightThemeGlobal');
    try {
      return super.setisLightThemeGlobal(estadoTheme);
    } finally {
      _$_GControllersBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLightThemeGlobal: ${isLightThemeGlobal}
    ''';
  }
}
