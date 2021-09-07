import 'package:flutter/material.dart';

class TextfieldCustom extends StatefulWidget {
  final TextEditingController mycontroller;
  final String label;
  final int? maxleng;
  final int? maxline;
  const TextfieldCustom(
      {Key? key,
      required this.mycontroller,
      required this.label,
      this.maxleng,
      this.maxline})
      : super(key: key);

  @override
  _TextfieldCustomState createState() => _TextfieldCustomState();
}

class _TextfieldCustomState extends State<TextfieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: widget.mycontroller,
            decoration: InputDecoration(
              focusColor: Colors.purple.shade400,
              border: OutlineInputBorder(),
              labelText: widget.label,
            ),
            maxLength: widget.maxleng != null ? widget.maxleng : null,
            maxLines: widget.maxline != null ? widget.maxline : null,
          ),
        )
      ],
    );
  }
}
