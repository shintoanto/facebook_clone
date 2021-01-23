import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/sections/storySection.dart';
import 'package:facebook_clone/widgets/headerButton.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/circularButton.dart';

class Home extends StatelessWidget {
  Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 27,
            ),
          ),
          actions: <Widget>[
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("Search Button...");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("Chat icon button...");
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            //Showing status bar
            StatusSection(),
            //This is a divider.
            thinDivider,
            //Header buttons.
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonText: "Live",
                buttonIcon: Icons.video_call,
                color: Colors.red[400],
              ),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonIcon: Icons.photo_library,
                  color: Colors.green),
              buttonThree: headerButton(
                  buttonText: "Room",
                  buttonIcon: Icons.videocam,
                  color: Colors.blue),
            ),
            //This is a divider.
            thickDivider,
            RoomSection(),
            //This is a divider.
            thickDivider,
            //Showing story section.
            StorySection(),
            thickDivider,
            PostCard(
              name: "Mohanlal",
              avatar: stone,
              publishedAt: "7h",
              //show specified.
              showBlueTick: true,
              postTitle: "Happy Diwali",
              postImage: stone, commentCount: "1K", likeCount: "10K",
              shareCount: "1K",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
