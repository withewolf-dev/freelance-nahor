import 'package:flutter/material.dart';

class OtpField extends StatefulWidget {
  const OtpField({Key? key}) : super(key: key);

  @override
  _OtpFieldState createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  late FocusNode one;
  late FocusNode two;
  late FocusNode three;
  late FocusNode four;

  @override
  void initState() {
    super.initState();
    one = FocusNode();
    two = FocusNode();
    three = FocusNode();
    four = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    one.dispose();
    two.dispose();
    three.dispose();
    four.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              width: 50.0,
              child: TextField(
                  onChanged: (value) {
                    print(value);
                    if (value != "") {
                      two.requestFocus();
                    }
                  },
                  //focusNode: one,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20.0, color: Colors.black))),
          Container(
              width: 50.0,
              child: TextField(
                  onChanged: (value) {
                    print(value);
                    if (value != "") {
                      three.requestFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  focusNode: two,
                  style: TextStyle(fontSize: 20.0, color: Colors.black))),
          Container(
              width: 50.0,
              child: TextField(
                  onChanged: (value) {
                    print(value);
                    if (value != "") {
                      four.requestFocus();
                    }
                  },
                  keyboardType: TextInputType.number,
                  focusNode: three,
                  style: TextStyle(fontSize: 20.0, color: Colors.black))),
          Container(
              width: 50.0,
              child: TextField(
                  onChanged: (value) {
                    print(value);
                  },
                  keyboardType: TextInputType.number,
                  focusNode: four,
                  style: TextStyle(fontSize: 20.0, color: Colors.black))),
        ],
      )),
    );
  }
}
