import 'package:facebook_clone/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;
  HeaderButtonSection({
    @required this.buttonOne,
    @required this.buttonTwo,
    @required this.buttonThree,
  });

  @override
  Widget build(BuildContext context) {
    Widget verticaDivider = VerticalDivider(
      thickness: 2,
      color: Colors.grey[200],
    );

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
          //Vertical divider.
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
              buttonText: "Chat")
        ],
      ),
    );
  }
}
