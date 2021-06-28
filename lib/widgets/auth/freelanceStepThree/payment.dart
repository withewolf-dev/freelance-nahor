import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentPerDay extends StatefulWidget {
  const PaymentPerDay({Key? key}) : super(key: key);

  @override
  _PaymentPerDayState createState() => _PaymentPerDayState();
}

class _PaymentPerDayState extends State<PaymentPerDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Amount you would charge per day?",
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
            maxLength: 3,
            maxLines: 1,
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
