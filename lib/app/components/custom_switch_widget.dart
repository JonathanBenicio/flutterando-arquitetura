import 'package:arquitetura/app/controller/app_controller.dart';
import 'package:flutter/material.dart';


class CustomSwitchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instace.themeSwitch.value,
      onChanged: (value) {
        AppController.instace.changeTheme(value);
      },
    );
  }
}
