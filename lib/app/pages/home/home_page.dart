import 'package:arquitetura/app/pages/home/components/custom_switch_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page")
      ),
      body: Center(child: CustomSwitchWidget(),)


    );
  }
}