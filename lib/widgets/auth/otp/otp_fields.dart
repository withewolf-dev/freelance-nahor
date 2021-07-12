import 'package:flutter/material.dart';

class OtpField extends StatefulWidget {
  final Function getOtp;
  const OtpField({Key? key, required this.getOtp}) : super(key: key);

  @override
  _OtpFieldState createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  late FocusNode one;
  late FocusNode two;
  late FocusNode three;
  late FocusNode four;
  late FocusNode five;
  late FocusNode six;

  @override
  void initState() {
    super.initState();
    one = FocusNode();
    two = FocusNode();
    three = FocusNode();
    four = FocusNode();
    five = FocusNode();
    six = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    one.dispose();
    two.dispose();
    three.dispose();
    four.dispose();
    five.dispose();
    six.dispose();

    super.dispose();
  }

  List<String> otp = [];

  @override
  Widget build(BuildContext context) {
    print("otp $otp");

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            width: 40.0,
            child: TextField(
                onChanged: (value) {
                  print(value);
                  otp.add(value);
                  if (value != "") {
                    two.requestFocus();
                  }
                },
                //focusNode: one,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20.0, color: Colors.black))),
        Container(
            width: 40.0,
            child: TextField(
                onChanged: (value) {
                  print(value);
                  otp.add(value);
                  if (value != "") {
                    three.requestFocus();
                  }
                },
                keyboardType: TextInputType.number,
                focusNode: two,
                style: TextStyle(fontSize: 20.0, color: Colors.black))),
        Container(
            width: 40.0,
            child: TextField(
                onChanged: (value) {
                  print(value);
                  otp.add(value);
                  if (value != "") {
                    four.requestFocus();
                  }
                },
                keyboardType: TextInputType.number,
                focusNode: three,
                style: TextStyle(fontSize: 20.0, color: Colors.black))),
        Container(
            width: 40.0,
            child: TextField(
                onChanged: (value) {
                  otp.add(value);
                  if (value != "") {
                    five.requestFocus();
                  }
                  print(value);
                },
                keyboardType: TextInputType.number,
                focusNode: four,
                style: TextStyle(fontSize: 20.0, color: Colors.black))),
        Container(
            width: 40.0,
            child: TextField(
                onChanged: (value) {
                  print(value);
                  otp.add(value);
                  if (value != "") {
                    six.requestFocus();
                  }
                },
                keyboardType: TextInputType.number,
                focusNode: five,
                style: TextStyle(fontSize: 20.0, color: Colors.black))),
        Container(
            width: 40.0,
            child: TextField(
                onChanged: (value) {
                  print(value);
                  otp.add(value);
                  print(otp.join());
                  widget.getOtp(otp.join());
                },
                keyboardType: TextInputType.number,
                focusNode: six,
                style: TextStyle(fontSize: 20.0, color: Colors.black))),
      ],
    );
  }
}
