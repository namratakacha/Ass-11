import 'package:flutter/material.dart';

class ForthTab extends StatefulWidget {
  const ForthTab({Key? key}) : super(key: key);

  @override
  _ForthTabState createState() => _ForthTabState();
}

class _ForthTabState extends State<ForthTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Icon(Icons.directions_walk));
  }
}
