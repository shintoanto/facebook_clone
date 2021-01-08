import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/appBarButton.dart';

class Home extends StatelessWidget {
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
      ),
    );
  }
}
