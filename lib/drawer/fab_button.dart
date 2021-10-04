import 'package:flutter/material.dart';
import 'package:speed_dial_fab/speed_dial_fab.dart';

class FabButton extends StatefulWidget {
  const FabButton({Key? key}) : super(key: key);

  @override
  _FabButtonState createState() => _FabButtonState();
}

class _FabButtonState extends State<FabButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('Flutter demo home page FAB button'),
      ),
      backgroundColor: Colors.grey,
      floatingActionButton: SpeedDialFabWidget(
        secondaryIconsList: [
          Icons.cut,
          Icons.copy,
          Icons.paste,
        ],
        secondaryIconsText: [
          "cut",
          "copy",
          "paste",
        ],
        secondaryIconsOnPress: [
          () => {},
          () => {},
          () => {},
        ],
        secondaryBackgroundColor: Colors.black,
        secondaryForegroundColor: Colors.white,
        primaryBackgroundColor: Colors.black,
        primaryForegroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "Test Speed Dial FAB Example",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
