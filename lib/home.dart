import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/appBarButton.dart';
import 'package:facebook_clone/sections/headerButtonSection.dart';

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
            AppBarButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("Search Button...");
              },
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("Chat icon button...");
              },
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
