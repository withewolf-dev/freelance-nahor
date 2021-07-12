import 'package:flutter/material.dart';

class Bio extends StatefulWidget {
  final Function getBio;
  const Bio({Key? key, required this.getBio}) : super(key: key);

  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
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
    widget.getBio(myController.text);
  }

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
            controller: myController,
          ),
        ],
      ),
    );
  }
}
