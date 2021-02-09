import 'package:flutter/material.dart';

class ButtonPrimaryOutline extends StatelessWidget {
  final String label;
  final Function onPressed;
  ButtonPrimaryOutline({
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Theme.of(context).primaryColor,
          )),
      child: FlatButton(
        hoverColor: Theme.of(context).primaryColor,
        onPressed: onPressed ??
            () {
              print('Button clicked');
            },
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
