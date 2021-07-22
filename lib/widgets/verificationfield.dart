import 'package:flutter/material.dart';

class VerificationField extends StatefulWidget {
  final TextEditingController phoneNumber;
  const VerificationField({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  _VerificationFieldState createState() => _VerificationFieldState();
}

class _VerificationFieldState extends State<VerificationField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Card(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("+91",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Container(
            width: 280,
            child: TextField(
              controller: widget.phoneNumber,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.green.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              //maxLength: 60,
              maxLines: 2,
              keyboardType: TextInputType.number,
            ),
          )
        ],
      ),
      // ),
    );
  }
}
