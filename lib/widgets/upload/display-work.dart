import 'package:flutter/material.dart';

class Displaywork extends StatelessWidget {
  final String imageUrl;
  const Displaywork({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(imageUrl: imageUrl);
  }
}

class ImageContainer extends StatelessWidget {
  final String imageUrl;
  const ImageContainer({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Image(
              fit: BoxFit.fill,
              height: 250,
              width: 300,
              image: NetworkImage(imageUrl)),
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
    );
  }
}
