import 'package:flutter/material.dart';

class AvatarHeader extends StatelessWidget {
  final String image;
  final String name;
  const AvatarHeader({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Welcome",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          maxRadius: 40.0,
          backgroundImage: NetworkImage(
            image,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 25.0,
        ),
      ],
    );
  }
}
