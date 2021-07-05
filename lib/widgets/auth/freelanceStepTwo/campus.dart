import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class CampusStay extends StatefulWidget {
  final Function getCampus;
  CampusStay({
    Key? key,
    required this.getCampus,
  }) : super(key: key);

  @override
  _CampusStayState createState() => _CampusStayState();
}

class _CampusStayState extends State<CampusStay> {
  final TextEditingController typeAheadController = TextEditingController();

  final List<String> list = ["on-campus", "off-campus"];

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    typeAheadController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    typeAheadController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('campus text field: ${typeAheadController.text}');
    widget.getCampus(typeAheadController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ElevatedButton(onPressed:  , child: Text("data")),
        TypeAheadField(
          textFieldConfiguration: TextFieldConfiguration(
              controller: typeAheadController,
              decoration: InputDecoration(
                  labelText: 'Where do you Stay?',
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
          suggestionsCallback: (pattern) => list.where(
              (item) => item.toLowerCase().contains(pattern.toLowerCase())),
          itemBuilder: (context, suggestion) {
            print("---------------------");
            print(suggestion);
            return ListTile(
              title: Text(suggestion.toString()),
            );
          },
          onSuggestionSelected: (suggestion) {
            suggestion = typeAheadController.text;
          },
        ),
      ],
    );
  }
}
