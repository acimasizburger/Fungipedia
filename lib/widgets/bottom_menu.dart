import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              context.go("/home");
            },
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          IconButton(
            onPressed: () {
              context.go("/search");
            },
            icon: Icon(
              CupertinoIcons.search_circle,
            ),
          ),
          IconButton(
            onPressed: () {
              context.go("/library");
            },
            icon: Icon(
              CupertinoIcons.bookmark,
            ),
          ),
          IconButton(
            onPressed: () {
              context.go("/profile");
            },
            icon: Icon(
              CupertinoIcons.person,
            ),
          ),
        ],
      ),
    );
  }
}
