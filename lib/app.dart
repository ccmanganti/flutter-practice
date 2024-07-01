// Homepage

import 'package:flutter/material.dart';
import 'post.dart';
import 'database.dart';
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

  @override
  void initState() {
    super.initState();
    _listPosts();
  }

  void _listPosts() async {
    List<Post> loadedPosts = await PostService.readPosts();
    this.setState(() {
      posts = loadedPosts;
    });
  }

  void newPost(text) {
    this.setState(() {
      Post newPost =
          new Post(text, getCurrentUser().displayName.toString(), {});
      newPost.setId(savePost(newPost));
      posts.add(newPost);
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
