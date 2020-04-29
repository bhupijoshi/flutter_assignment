import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function clickHandler;
  CustomButton({@required this.clickHandler});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: clickHandler,
      child: Text('Clik Me'),
    );
  }
}
