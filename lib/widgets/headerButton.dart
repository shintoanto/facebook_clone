import 'package:flutter/material.dart';

Widget headerButton(
    {@required String buttonText,
    @required IconData buttonIcon,
    void Function() buttonAction,
    @required Color color}) {
  return FlatButton.icon(
      onPressed: () {
        print(buttonText);
      },
      icon: Icon(
        buttonIcon,
        color: color,
      ),
      label: Text(buttonText));
}
