import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBoarder;
  Avatar({
    @required this.displayImage,
    @required this.displayStatus,
    this.displayBoarder = false,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: displayBoarder
              ? Border.all(
                  color: Colors.blueAccent,
                  width: 3,
                )
              : Border(),
        ),
        padding: EdgeInsets.only(
          left: 4,
          right: 4,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            stone,
            width: 50,
            height: 50,
          ),
        ),
      ),
      displayStatus == true
          ? Positioned(
              bottom: 0,
              right: 1,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            )
          : SizedBox()
    ]);
  }
}
