import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference freelanceUser =
    FirebaseFirestore.instance.collection('freelance');

// final String bio;
// final String hometown;
// final String title;
// final String uuid;
// final String feesduration;
// FreelanceUser(
//     {required this.bio,
//     required this.hometown,
//     required this.title,
//     required this.uuid,
//     required this.feesduration,
//     });

Future<void> addUser(bio, hometown, title, uuid, feesduration) {
  return freelanceUser
      .add({
        'bio': bio,
        'hometown': hometown,
        'title': title,
        'uuid': uuid,
        'fee_duration': feesduration
      })
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
