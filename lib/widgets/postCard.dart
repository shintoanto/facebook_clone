import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/headerButtonSection.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:facebook_clone/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String publishedAt;
  final String name;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    @required this.postImage,
    @required this.postTitle,
    @required this.publishedAt,
    @required this.name,
    @required this.avatar,
    this.showBlueTick = false,
    @required this.likeCount,
    @required this.commentCount,
    @required this.shareCount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          postCardStory(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1.5,
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up,
                color: Colors.grey),
            buttonTwo: headerButton(
                buttonText: "Comment",
                buttonIcon: Icons.message,
                color: Colors.grey),
            buttonThree: headerButton(
                buttonText: "Share",
                buttonIcon: Icons.share,
                color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(
        postImage,
      ),
    );
  }

  Widget titleSection() {
    return Container(
      child: Text(
        postTitle == null ? "" : postTitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: (Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                displayText(
                  label: likeCount,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                displayText(
                  label: commentCount,
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(
                  label: "Comments",
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(
                  label: shareCount,
                ),
                SizedBox(
                  width: 5,
                ),
                displayText(
                  label: "Shares",
                ),
                SizedBox(
                  height: 10,
                ),
                Avatar(
                  displayImage: stone,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    print("Drop down arrow is pressed");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({@required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  Widget postCardStory() {
    return ListTile(
        leading: Avatar(
          displayImage: stone,
          displayStatus: false,
        ),
        title: Row(
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            showBlueTick ? BlueTick() : SizedBox(),
          ],
        ),
        subtitle: Row(
          children: <Widget>[
            Text(publishedAt == null ? "" : publishedAt),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.public,
              color: Colors.grey[700],
              size: 15,
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            print("Open more menu");
          },
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          ),
        ));
  }
}
