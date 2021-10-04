import 'package:assignment_11/drawer/main_drawer.dart';
import 'package:assignment_11/fifth_tab.dart';
import 'package:assignment_11/first_tab.dart';
import 'package:assignment_11/forth_tab.dart';
import 'package:assignment_11/second_tab.dart';
import 'package:assignment_11/third_tab.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text('Button Tabbar'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          foregroundColor: Colors.red,
          bottom: ButtonsTabBar(
              backgroundColor: Colors.red,
              unselectedBackgroundColor: Colors.grey,
              unselectedLabelStyle: TextStyle(color: Colors.black),
              buttonMargin: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                Tab(
                  icon: Icon(Icons.drive_eta),
                  text: 'car',
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: 'transit',
                ),
                Tab(icon: Icon(Icons.pedal_bike)),
                Tab(icon: Icon(Icons.directions_walk)),
                Tab(icon: Icon(Icons.directions_bike))
              ]),
        ),
        body: TabBarView(children: [
          FirstTab(),
          SecondTab(),
          ThirdTab(),
          ForthTab(),
          FifthTab()
        ]),
      ),
    );
  }
}
