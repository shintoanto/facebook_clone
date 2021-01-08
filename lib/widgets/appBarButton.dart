import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  AppBarButton({@required this.buttonIcon, @required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          icon: Icon(
            buttonIcon,
            color: Colors.black,
            size: 25,
          ),
          onPressed: buttonAction),
    );
  }
}
