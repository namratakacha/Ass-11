import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text('Grouped radio button example'),
        ),
        floatingActionButton: FloatingActionButton.extended(
            label: Text('Grouped radio Button'),
            onPressed: () {
              Navigator.of(context).pushNamed('/grouped-radio-button');
            },
            icon: Icon(Icons.check_box)),
        body: Container(
          child: ListView(
            children: [
              Text('Horizontal',
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
                          'Student',
                          'Parent',
                          'Teacher',
                        ],
                        buttonLables: [
                          'Student',
                          'Parent',
                          'Teacher',
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        selectedColor: Colors.blue,
                        unSelectedColor: Colors.white,
                        defaultSelected: ['Student'],
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
                          'Student',
                          'Parent',
                          'Teacher',
                        ],
                        buttonLables: [
                          'Student',
                          'Parent',
                          'Teacher',
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        selectedColor: Colors.blue,
                        unSelectedColor: Colors.white,
                        defaultSelected: ['Teacher'],
                        horizontal: true,
                        width: 100,
                        enableShape: true,
                      )
                    ],
                  ))
                ],
              ),
              SizedBox(height: 10),
              Text('Verticle',
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
                      SizedBox(height: 10),
                      CustomCheckBoxGroup(
                        buttonValuesList: [
                          'Student',
                          'Parent',
                          'Teacher',
                        ],
                        buttonLables: [
                          'Student',
                          'Parent',
                          'Teacher',
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        selectedColor: Colors.blue,
                        unSelectedColor: Colors.white,
                        defaultSelected: ['Student'],
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
                          'Student',
                          'Parent',
                          'Teacher',
                        ],
                        buttonLables: [
                          'Student',
                          'Parent',
                          'Teacher',
                        ],
                        checkBoxButtonValues: (values) {
                          print(values);
                        },
                        selectedColor: Colors.blue,
                        unSelectedColor: Colors.white,
                        defaultSelected: ['Teacher'],
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
