import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Displaywork extends StatelessWidget {
  Displaywork({Key? key}) : super(key: key);

  final id = FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('workmedia')
          .where("uid", isEqualTo: id)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.hasData) {
          return ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              final imagelist = data["images"] as List;
              return SizedBox(
                height: double.infinity,
                child: ListView.builder(
                    itemCount: imagelist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                          child: ImageContainer(imageUrl: imagelist[index]));
                    }),
              );
            }).toList(),
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  const ImageContainer({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Container(
            height: 180.0,
            width: 220.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          Positioned(
              top: -12,
              right: -15,
              //left: 10,
              child: InkWell(
                onTap: () {
                  print("on tap");
                },
                child: Ink(
                  child: Icon(
                    Icons.cancel,
                    size: 30,
                    color: Colors.red.shade700,
                  ),
                ),
              ))
        ],
        clipBehavior: Clip.none,
      ),
    );
  }
}
