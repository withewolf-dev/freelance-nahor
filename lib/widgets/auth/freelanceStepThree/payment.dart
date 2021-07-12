import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentPerDay extends StatefulWidget {
  final Function getPayment;
  const PaymentPerDay({Key? key, required this.getPayment}) : super(key: key);

  @override
  _PaymentPerDayState createState() => _PaymentPerDayState();
}

class _PaymentPerDayState extends State<PaymentPerDay> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
    widget.getPayment(myController.text);
  }

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
            controller: myController,
          ),
        ],
      ),
    );
  }
}
