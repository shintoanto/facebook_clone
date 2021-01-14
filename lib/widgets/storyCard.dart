import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayborder;

  StoryCard({
    this.displayborder = false,
    this.createStoryStatus = false,
    @required this.avatar,
    @required this.labelText,
    @required this.story,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        margin: EdgeInsets.only(
          left: 5,
          right: 5,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(children: <Widget>[
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {
                      print("Print new story");
                    },
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBoarder: displayborder,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              (labelText != null
                  ? labelText
                  : "N/A"
                      "Add to story"),
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]));
  }
}
