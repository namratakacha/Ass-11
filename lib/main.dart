import 'package:assignment_11/drawer/fab_button.dart';
import 'package:assignment_11/drawer/grouped_button.dart';
import 'package:assignment_11/drawer/menu_button.dart';
import 'package:assignment_11/drawer/radio_button.dart';
import 'package:assignment_11/drawer/reaction_button.dart';
import 'package:assignment_11/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/grouped-button': (_) => GroupedButton(),
        '/radio-button': (_) => GroupedButton(),
        '/grouped-radio-button': (_) => RadioButton(),
        '/menu-button': (_) => MenuButton(),
        '/fab-button': (_) => FabButton(),
        '/reaction-button': (_) => ReactionButton()
      },
    );
  }
}
