import 'package:flutter/material.dart';

class TextfieldCustom extends StatefulWidget {
  final mycontroller;
  final String? label;
  final int? maxleng;
  final int? maxline;
  final String? hintext;
  TextfieldCustom(
      {Key? key,
      required this.mycontroller,
      this.label,
      this.maxleng,
      this.maxline,
      this.hintext})
      : super(key: key);

  @override
  _TextfieldCustomState createState() => _TextfieldCustomState();
}

class _TextfieldCustomState extends State<TextfieldCustom> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.label != null) widget.mycontroller.text = widget.label;
  }

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
              hintText: widget.hintext,
            ),
            maxLength: widget.maxleng != null ? widget.maxleng : null,
            maxLines: widget.maxline != null ? widget.maxline : null,
          ),
        )
      ],
    );
  }
}
