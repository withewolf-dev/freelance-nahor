import 'package:flutter/material.dart';

class ProfileSheetBio extends StatelessWidget {
  final String bioTitle;
  final String bio;
  const ProfileSheetBio({Key? key, required this.bioTitle, required this.bio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        children: <Widget>[
          Container(
            width: 380,
            child: Text(
              bioTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 380,
            child: Text(
              bio,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //CustomTabar(),
        ],
      ),
    );
  }
}
