// Homepage

import 'package:flutter/material.dart';

class Post {
  String body;
  String author;
  int likes = 0;
  bool userLiked = false;

  Post(this.body, this.author);

  void likePost() {
    this.userLiked = !this.userLiked;
    if (this.userLiked) {
      this.likes += 1;
    } else {
      this.likes -= 1;
    }
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<Post> posts = [];

  void newPost(text) {
    this.setState(() {
      posts.add(new Post(text, "Clark"));
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

class TextInputWidget extends StatefulWidget {
  final Function(String) callback;
  const TextInputWidget({super.key, required this.callback});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void clickButton() {
    text = controller.text;
    widget.callback(text);
    controller.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: this.controller,
        // onChanged: (text) => this.changeText(text),
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.message,
            ),
            labelText: "Your Message",
            suffixIcon:
                IconButton(onPressed: clickButton, icon: Icon(Icons.send))));
  }
}

class PostList extends StatefulWidget {
  const PostList({super.key, required this.listItems});

  final List<Post> listItems;

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  // void liked(Function callback) {
  //   this.setState(() {
  //     callback();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.listItems.length,
      itemBuilder: (context, index) {
        var post = widget.listItems[index];
        return Card(
          child: Row(
            children: [
              Expanded(
                  child: ListTile(
                title: Text(post.body),
                subtitle: Text(post.author),
              )),
              Row(
                children: [
                  Container(
                    child: Text(post.likes.toString()),
                  ),
                  IconButton(
                      onPressed: () => {
                            setState(() {
                              post.likePost();
                            })
                          },
                      color: post.userLiked ? Colors.blue : Colors.black,
                      icon: Icon(Icons.thumb_up))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
