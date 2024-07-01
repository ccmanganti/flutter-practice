import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'post.dart';
import 'package:firebase_auth/firebase_auth.dart';

User getCurrentUser() {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User user = auth.currentUser!;
    return user;
  }

class PostList extends StatefulWidget {
  const PostList({super.key, required this.listItems});

  final List<Post> listItems;

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  void liked(Function callback) {
    this.setState(() {
      callback();
    });
  }



  bool userLiked(User user, Post post) {
    if (post.likes.contains(user.uid)) {
      return true;
    }
    return false;
  }


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
                    child: Text(post.likes.length.toString()),
                  ),
                  IconButton(
                      onPressed: () => {
                            setState(() {
                              post.likePost(getCurrentUser());
                            })
                          },
                      color: userLiked(getCurrentUser(), post) ? Colors.blue : Colors.black,
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
