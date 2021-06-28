import 'package:flutter/material.dart';

class BioTitle extends StatefulWidget {
  const BioTitle({Key? key}) : super(key: key);

  @override
  _BioTitleState createState() => _BioTitleState();
}

class _BioTitleState extends State<BioTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Write a catchy title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.green.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            maxLength: 60,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
