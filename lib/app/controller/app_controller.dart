import 'package:flutter/foundation.dart';

class AppController {

  //final - impedir implementações
  static final AppController instace = AppController._();
  
  //construtor privado
  AppController._();

  
  final themeSwitch = ValueNotifier<bool>(false);

  changeTheme(bool value) {
    themeSwitch.value = value;
  }
}