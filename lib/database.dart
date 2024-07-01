import 'package:firebase_database/firebase_database.dart';
import 'package:hello_world/post.dart';

final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();

DatabaseReference savePost(Post post) {
  var id = _databaseReference.child('posts').push();
  id.set(post.toJson());
  return id;
}

void getPosts() async {
  DatabaseReference reference = _databaseReference.child('posts');
  DatabaseEvent event = await reference.once();

  print(event.snapshot.value);
}


class PostService {
  static final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref();

  // Save a new post
  static DatabaseReference savePost(Post post) {
    var id = _databaseReference.child('posts').push();
    id.set(post.toJson());
    return id;
  }

  // Read all posts
  static Future<List<Post>> readPosts() async {
    DatabaseEvent event = await _databaseReference.child('posts').once();
    List<Post> posts = [];
    if (event.snapshot.value != null) {
      for (var val in event.snapshot.children) {
        Post? post = Post.fromSnapshot(val);
        if (post != null) {
          post.setId(_databaseReference.child('posts/' + val.key!));
          posts.add(post);
        }
      }
    }
    return posts;
  }

  // Update a post's likes
  static void updatePost(Post post) {
    post.id.update(post.toJson());
  }
}