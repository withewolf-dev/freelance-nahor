import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class ChooseDept extends StatefulWidget {
  ChooseDept({
    Key? key,
    required this.typeAheadController,
    required this.list,
    required this.isbool,
    required this.nextbtn,
  }) : super(key: key);

  final typeAheadController;
  final List list;
  final bool isbool;
  final Function nextbtn;
  @override
  _ChooseDeptState createState() => _ChooseDeptState();
}

class _ChooseDeptState extends State<ChooseDept> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TypeAheadField(
          textFieldConfiguration: TextFieldConfiguration(
              controller: widget.typeAheadController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'choose Department',
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w100, fontSize: 14))),
          suggestionsCallback: (pattern) => widget.list.where(
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
