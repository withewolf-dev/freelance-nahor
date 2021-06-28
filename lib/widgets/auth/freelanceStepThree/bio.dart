import 'package:flutter/material.dart';

class Bio extends StatefulWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Write an awesome bio for yourself",
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
            maxLength: 300,
            maxLines: 8,
          ),
        ],
      ),
    );
  }
}
