import 'package:customDrawer/homepage.dart';
import 'package:flutter/material.dart';
void main() => runApp(CustomDrawer());

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Custom Drawer",
      home: MyHomePage(title: 'Flutter Custom Drawer'),
    );
  }
}
