import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String uid;
  final String email;
  final String username;
  final String bio;
  final String photoUrl;
  final List followers;
  final List following;

  User({
    required this.uid,
    required this.email,
    required this.username,
    required this.bio,
    required this.photoUrl,
    required this.followers,
    required this.following,
  });

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'email': email,
        'username': username,
        'bio': bio,
        'photoUrl': photoUrl,
        'followers': followers,
        'following': following,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
        uid: snapshot['uid'],
        email: snapshot['email'],
        username: snapshot['username'],
        bio: snapshot['bio'],
        photoUrl: snapshot['photoUrl'],
        followers: snapshot['followers'],
        following: snapshot['following']);
  }
}
