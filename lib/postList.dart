import 'package:flutter/material.dart';
import 'post.dart';

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
