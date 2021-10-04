import 'package:assignment_11/drawer/grouped_button.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.amber,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://nurserynisarga.in/wp-content/uploads/2019/10/Red-Rose.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text('Namrata Kacha',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.note),
              title: Text('Grouped button example'),
              onTap: () {
                Navigator.of(context).pushNamed('/grouped-button');
              }),
          ListTile(
              leading: Icon(Icons.note),
              title: Text('Radio button example'),
              onTap: () {
                Navigator.of(context).pushNamed('/radio-button');
              }),
          ListTile(
              leading: Icon(Icons.note),
              title: Text('Flutter Demo Home Page'),
              onTap: () {
                Navigator.of(context).pushNamed('/fab-button');
              }),
          ListTile(
              leading: Icon(Icons.note),
              title: Text('Menu button example'),
              onTap: () {
                Navigator.of(context).pushNamed('/menu-button');
              }),
          ListTile(
              leading: Icon(Icons.note),
              title: Text('Flutter reation button'),
              onTap: () {
                Navigator.of(context).pushNamed('/reaction-button');
              }),
        ],
      ),
    );
  }
}
