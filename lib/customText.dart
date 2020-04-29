import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String textForWidget;
  CustomText({@required this.textForWidget});
  @override
  Widget build(BuildContext context) {
    return Text(
      textForWidget,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
