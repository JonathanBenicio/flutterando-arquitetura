import 'package:arquitetura/app/app_controller.dart';
import 'package:flutter/material.dart';


class CustomSwitchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instace.isDark,
      onChanged: (value) {
        AppController.instace.changeThemeViewModel.changeTheme(value);
      },
    );
  }
}
