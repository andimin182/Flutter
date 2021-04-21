import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_1/post.dart';

final databaseReference = FirebaseDatabase.instance.reference();

DatabaseReference savePost(Post post) {
  var id = databaseReference.child('post/').push();
  id.set(post.toJson());
  return id;
}
