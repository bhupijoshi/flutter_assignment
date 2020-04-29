import 'package:flutter/material.dart';
// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _index = 0;
  final _aList = [
    'Create a new Flutter App (in this project) and output an AppBar and some text below it',
    'Add a button which changes the text (to any other text of your choice)',
    'Split the app into three widgets: App, TextControl & Text'
  ];

  void _updateTextForTextWidget() {
    setState(() {
      if (_index < _aList.length - 1) {
        _index = _index + 1;
      } else {
        _index = 0;
      }
      print(_index);
      print(_aList.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: _updateTextForTextWidget,
                child: Text('Clik Me'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                _aList[_index],
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
