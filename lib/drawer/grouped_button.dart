import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class GroupedButton extends StatefulWidget {
  const GroupedButton({Key? key}) : super(key: key);

  @override
  _GroupedButtonState createState() => _GroupedButtonState();
}

class _GroupedButtonState extends State<GroupedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text('Grouped button example'),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Radio Button'),
          onPressed: () {
            Navigator.of(context).pushNamed('/grouped-radio-button');
          },
          icon: Icon(Icons.radio_button_checked),
        ),
        body: Container(
          child: ListView(
            children: [
              Text('Verticle',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text('Shape Disabled', style: TextStyle(fontSize: 18)),
                      CustomCheckBoxGroup(
                        buttonValuesList: [
                          'Monday',
                          'Tuesday',
                          'Wednesday',
                          'Thursday',
                        ],
                        buttonLables: [
                          'Monday',
                          'Tuesday',
                          'Wednesday',
                          'Thursday',
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        selectedColor: Colors.blue,
                        unSelectedColor: Colors.white,
                        defaultSelected: ['Monday'],
                        horizontal: true,
                        width: 100,
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Text('Shape Enabled', style: TextStyle(fontSize: 18)),
                      CustomCheckBoxGroup(
                        buttonValuesList: [
                          'Thursday',
                          'Friday',
                          'Saturday',
                          'Sunday',
                        ],
                        buttonLables: [
                          'Thursday',
                          'Friday',
                          'Saturday',
                          'Sunday',
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        selectedColor: Colors.blue,
                        unSelectedColor: Colors.white,
                        defaultSelected: ['Sunday'],
                        horizontal: true,
                        width: 100,
                        enableShape: true,
                      )
                    ],
                  ))
                ],
              ),
              SizedBox(height: 10),
              Text('Horizontal',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
              Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Shape Disabled',
                        style: TextStyle(fontSize: 18),
                      ),
                      CustomCheckBoxGroup(
                        buttonValuesList: [
                          'Monday',
                          'Tuesday',
                          'Wednesday',
                          'Thursday',
                          'Friday',
                          'Saturday',
                          'Sunday',
                        ],
                        buttonLables: [
                          'Monday',
                          'Tuesday',
                          'Wednesday',
                          'Thursday',
                          'Friday',
                          'Saturday',
                          'Sunday',
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        selectedColor: Colors.blue,
                        unSelectedColor: Colors.white,
                        defaultSelected: ['Monday'],
                        horizontal: false,
                        width: 100,
                        enableButtonWrap: false,
                        padding: 10,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Shape Enabled',
                        style: TextStyle(fontSize: 18),
                      ),
                      CustomCheckBoxGroup(
                        buttonValuesList: [
                          'Monday',
                          'Tuesday',
                          'Wednesday',
                          'Thursday',
                          'Friday',
                          'Saturday',
                          'Sunday',
                        ],
                        buttonLables: [
                          'Monday',
                          'Tuesday',
                          'Wednesday',
                          'Thursday',
                          'Friday',
                          'Saturday',
                          'Sunday',
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        selectedColor: Colors.blue,
                        unSelectedColor: Colors.white,
                        defaultSelected: ['Sunday'],
                        horizontal: false,
                        width: 100,
                        enableButtonWrap: true,
                        enableShape: true,
                        autoWidth: false,
                        wrapAlignment: WrapAlignment.center,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
