import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/uploadwork/uploadwork_bloc.dart';

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
                height: MediaQuery.of(context).size.height,
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
            width: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          Positioned(
              top: -20,
              right: -25,
              //left: 10,
              child: InkWell(
                onTap: () {
                  BlocProvider.of<UploadworkBloc>(context)
                      .add(DeleteMedia(imageUrl: imageUrl));
                },
                child: Ink(
                  child: Icon(
                    Icons.cancel,
                    size: 45,
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
