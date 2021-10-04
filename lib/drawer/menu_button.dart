import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  String? _chosenValue;
  var _currentItemSelected = 'Low';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu button example'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Normal usage of menu button',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: DropdownButton(
                    value: _chosenValue,
                    items: <String>['Low', 'Medium', 'High']
                        .map(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    }),
              ),
              Text(
                'Menu button with scroll physics',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: DropdownButton(
                    value: _chosenValue,
                    items: <String>[
                      'Low',
                      'Medium',
                      'High',
                    ]
                        .map(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    }),
              ),
              Text(
                'Menu button not crossing the edge',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: DropdownButton(
                    value: _chosenValue,
                    items: <String>[
                      'Lorem ipsum',
                      'Lorem ipsum dolor sit',
                      'Lorem ipsum font'
                    ]
                        .map(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    }),
              ),
              Text(
                'Usage of menu button without showing the same selected item',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: DropdownButton(
                    value: _chosenValue,
                    items: <String>['Low', 'Medium', 'High']
                        .map(
                          (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
