import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          StoryCard(
            labelText: "Add to story",
            avatar: stone,
            story: stone,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Kim Taehyung",
            avatar: stone,
            story: stone,
            displayborder: true,
          ),
          StoryCard(
            labelText: "Add to story",
            avatar: stone,
            story: stone,
            displayborder: true,
          ),
          StoryCard(
            labelText: "Add to story",
            avatar: stone,
            story: stone,
            displayborder: true,
          ),
        ],
      ),
    );
  }
}
