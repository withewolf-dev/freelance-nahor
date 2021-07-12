import 'package:flutter/material.dart';

class BioTitle extends StatefulWidget {
  final Function getBioTitle;
  const BioTitle({Key? key, required this.getBioTitle}) : super(key: key);

  @override
  _BioTitleState createState() => _BioTitleState();
}

class _BioTitleState extends State<BioTitle> {
  final TextEditingController myController = TextEditingController();

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
    print('bio title text field: ${myController.text}');
    widget.getBioTitle(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Write a catchy title",
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
            maxLength: 60,
            maxLines: 2,
            controller: myController,
          ),
        ],
      ),
    );
  }
}
