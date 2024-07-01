import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'postList.dart';
import 'database.dart';

final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();

class Post {
  late DatabaseReference id;
  late String keyUser;
  late String body;
  late String author;
  late Set likes = {};

  Post(this.body, this.author, this.likes);

  // Convert the created post object to a map for database saving
  Map<String, dynamic> toJson() {
    return {
      'keyUser': getCurrentUser().uid,
      'author': author,
      'body': body,
      'likes': likes.toList(),
    };
  }

  static Post? fromSnapshot(DataSnapshot snapshot) {
    Map<dynamic, dynamic>? data = snapshot.value as Map<dynamic, dynamic>?;
    if (data == null) {
      return null;
    }
    Set<String> likes = Set<String>.from(data['likes'] ?? []);
    return Post(data['body'], data['author'], likes);
  }

  void setId(DatabaseReference id) {
    this.id = id;
  }

  Future<List<Post>> readMessages() async {
    DatabaseEvent event = await _databaseReference.child('posts').once();
    List<Post> posts = [];
    if (event.snapshot.value != null) {
      for (var val in event.snapshot.children) {
        Post? post = Post.fromSnapshot(val);
        if (post != null) {
          post.setId(_databaseReference.child(val.key!));
          posts.add(post);
        }
      }
    }
    return posts;
  }
  // Convert DataSnapshot (Post stored in the database) to a map

  void updateLikePost(Post post, DatabaseReference id) {
    id.update(post.toJson());
  }

  void likePost(User user) {
    if (likes.contains(user.uid)) {
      likes.remove(user.uid);
    } else {
      likes.add(user.uid);
    }
    updateLikePost(this, id);
  }
}
