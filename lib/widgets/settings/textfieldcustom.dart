import 'package:flutter/material.dart';

class TextfieldCustom extends StatefulWidget {
  final TextEditingController mycontroller;
  final String label;
  final int? maxleng;
  const TextfieldCustom(
      {Key? key, required this.mycontroller, required this.label, this.maxleng})
      : super(key: key);

  @override
  _TextfieldCustomState createState() => _TextfieldCustomState();
}

class _TextfieldCustomState extends State<TextfieldCustom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(widget.label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: widget.mycontroller,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.deepPurple.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            maxLength: widget.maxleng != null ? widget.maxleng : null,
            maxLines: 2,
            //keyboardType: TextInputType.number,
          ),
        )
      ],
    );
  }
}
