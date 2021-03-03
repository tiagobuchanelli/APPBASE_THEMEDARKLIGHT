import 'package:mobx/mobx.dart';

part 'global-controller.g.dart';

class GlobalController = _GControllersBase with _$GlobalController;

abstract class _GControllersBase with Store {
  @observable
  bool isLightThemeGlobal = true;

  @action
  setisLightThemeGlobal(bool estadoTheme) {
    isLightThemeGlobal = estadoTheme;
  }
}
