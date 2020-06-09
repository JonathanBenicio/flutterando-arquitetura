import 'package:arquitetura/app/interfaces/local_storage_interface.dart';
import 'package:arquitetura/app/models/appconfig_model.dart';

class ChangeThemeViewModel {
  final ILocalStorage storage;

  final AppConfigModel config = AppConfigModel();

  ChangeThemeViewModel({this.storage});

  Future init() async {
    await storage.get('isDark').then((value) {
      if(value != null) config.themeSwitch.value = value;
    });
  }

  changeTheme(bool value) {
    //sharedPreferences
    //hive
    //sqlite
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}