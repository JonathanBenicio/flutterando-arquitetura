import 'package:arquitetura/app/models/appconfig_model.dart';
import 'package:flutter/foundation.dart';

class AppController {

  //final - impedir implementações
  static final AppController instace = AppController._();
  
  //construtor privado
  AppController._();

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  changeTheme(bool value) {
    themeSwitch.value = value;
  }
}