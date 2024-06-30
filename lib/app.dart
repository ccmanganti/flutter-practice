// Homepage

import 'package:flutter/material.dart';
import 'post.dart';
import 'postList.dart';
import 'textInputWidget.dart';

class MyHome extends StatefulWidget {
  final String name;
  const MyHome({super.key, required this.name});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Post> posts = [];

  void newPost(text) {
    this.setState(() {
      posts.add(new Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("This is my first App"),
        ),
        body: Column(
          children: [
            Expanded(
                child: PostList(
              listItems: posts,
            )),
            TextInputWidget(
              callback: this.newPost,
            ),
          ],
        ));
  }
}
