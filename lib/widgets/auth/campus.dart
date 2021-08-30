import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class Campus extends StatefulWidget {
  Campus({
    Key? key,
    required this.typeAheadController,
  }) : super(key: key);

  final typeAheadController;

  @override
  _CampusState createState() => _CampusState();
}

class _CampusState extends State<Campus> {
  final List<String> list = ["on campus", "off campus"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ElevatedButton(onPressed:  , child: Text("data")),
        TypeAheadField(
          textFieldConfiguration: TextFieldConfiguration(
              controller: widget.typeAheadController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'I stay ',
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w100, fontSize: 14))),
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
            widget.typeAheadController.text = suggestion;
          },
        ),
      ],
    );
  }
}
