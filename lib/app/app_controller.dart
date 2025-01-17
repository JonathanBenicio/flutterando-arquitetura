import 'package:arquitetura/app/services/shared_local_storage_service.dart';
import 'package:arquitetura/app/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/foundation.dart';


class AppController {

  //final - impedir implementações
  static final AppController instace = AppController._();
  
  //construtor privado
  AppController._(){
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel = 
  ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => changeThemeViewModel.config.themeSwitch;

  

  
}