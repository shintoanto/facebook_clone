import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget verticaDivider = VerticalDivider(
    thickness: 2,
    color: Colors.grey[200],
  );
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
          Icons.video_call,
          color: color,
        ),
        label: Text(buttonText));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          headerButton(
              buttonAction: () {
                print("Go Live");
              },
              buttonIcon: Icons.video_call,
              color: Colors.red,
              buttonText: "Live"),
          verticaDivider,
          headerButton(
              buttonAction: () {
                print("");
              },
              buttonIcon: Icons.account_box,
              color: Colors.green,
              buttonText: "Photo"),
          verticaDivider,
          headerButton(
              buttonAction: () {
                print("chat room");
              },
              buttonIcon: Icons.video_call,
              color: Colors.purple,
              buttonText: "Chat room")
        ],
      ),
    );
  }
}
