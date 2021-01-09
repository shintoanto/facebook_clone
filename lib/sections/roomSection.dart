import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          createRoomButton(),
          Avatar(displayImage: stone, displayStatus: true),
          Avatar(
            displayImage: stone,
            displayStatus: true,
          ),
          Avatar(displayImage: stone, displayStatus: true),
          Avatar(displayImage: stone, displayStatus: true),
          Avatar(displayImage: stone, displayStatus: true),
          Avatar(displayImage: stone, displayStatus: true),
          Avatar(displayImage: stone, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \n room",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          print("Create chat room");
        },
        borderSide: BorderSide(
          color: Colors.blue[100],
        ),
      ),
    );
  }
}
