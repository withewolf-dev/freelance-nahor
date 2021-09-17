import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Slider extends StatelessWidget {
  final String freelancerId;
  Slider({Key? key, required this.freelancerId}) : super(key: key);

  final CollectionReference workmedia =
      FirebaseFirestore.instance.collection('workmedia');

  getMedia() async {
    List? images;
    try {
      final snapshot =
          await workmedia.where("uid", isEqualTo: freelancerId).get();

      images = snapshot.docs[0]["images"];
    } on FirebaseException catch (e) {
      print(e);
    }
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getMedia(),
        builder: (context, snapshot) {
          if (snapshot.hasData == true) {
            print(snapshot.data);
            final imglist = snapshot.data as List;
            return CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true,
              ),
              items: imglist
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(
                              e,
                              width: 1050,
                              height: 350,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ))
                  .toList(),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
