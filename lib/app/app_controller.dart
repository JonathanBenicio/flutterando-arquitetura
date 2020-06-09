import 'package:arquitetura/app/interfaces/local_storege_interface.dart';
import 'package:arquitetura/app/models/appconfig_model.dart';
import 'package:arquitetura/app/services/shared_local_storage_service.dart';
import 'package:flutter/foundation.dart';


class AppController {

  //final - impedir implementações
  static final AppController instace = AppController._();
  
  //construtor privado
  AppController._(){
    storage.get('isDark').then((value) {
      if(value =! null) config.themeSwitch.value = value;
    });
  }

  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  final ILocalStorege storage = SharedLocalStorageService();

  changeTheme(bool value) {
    //sharedPreferences
    //hive
    //sqlite
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}