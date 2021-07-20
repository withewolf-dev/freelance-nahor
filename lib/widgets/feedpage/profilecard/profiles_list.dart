import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kilo/widgets/feedpage/profilecard/profile_container.dart';

class ProfilesList extends StatefulWidget {
  final String ctg;
  ProfilesList({Key? key, required this.ctg}) : super(key: key);

  @override
  _ProfilesListState createState() => _ProfilesListState();
}

class _ProfilesListState extends State<ProfilesList> {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance
      .collection('freelance')
      .where('category', isEqualTo: 'education')
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        if (snapshot.connectionState == ConnectionState.active) {
          return new ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data() as Map<String, dynamic>;
              return ProfileContainer(bio: data['bio'], name: data['name']);
            }).toList(),
          );
        }

        return Text("not working");
      },
    );
  }
}
