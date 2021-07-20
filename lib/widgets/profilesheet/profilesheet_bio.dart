import 'package:flutter/material.dart';

class ProfileSheetBio extends StatelessWidget {
  final String bio;
  const ProfileSheetBio({Key? key, required this.bio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        children: <Widget>[
          Container(
            width: 380,
            child: Text(
              bio,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 380,
            child: Text(
              "I am a professional copywriter and top-rated seller on Fiverr.My service is perfect for press releases, bios, descriptions, and more. I've been privileged to work with people and businesses of all backgrounds. From artists and start-ups to business owners, realtors and entrepreneurs, anything goes! My goal is to provide impactful, reader-friendly, and compelling content for your needs.",
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
