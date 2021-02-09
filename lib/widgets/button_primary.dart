import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final Color backgroundColor;
  final String label;
  final Function onPressed;
  ButtonPrimary({
    @required this.label,
    @required this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).primaryColor,
      ),
      child: FlatButton(
        onPressed: onPressed ??
            () {
              print('Button clicked');
            },
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
