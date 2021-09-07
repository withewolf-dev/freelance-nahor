import 'package:flutter/material.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';
import 'package:kilo/widgets/universal_appbar.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class ChangeFeesPage extends StatelessWidget {
  ChangeFeesPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController labelController = TextEditingController();
  final TextEditingController typeAheadController = TextEditingController();
  final String feeslabel = "Fees";

  final List<String> list = [
    "days",
    "hour",
    "months",
    "weekly",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UniversalAppBar(),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TypeAheadField(
                    textFieldConfiguration: TextFieldConfiguration(
                        controller: typeAheadController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Fees per',
                            labelStyle: TextStyle(fontSize: 14))),
                    suggestionsCallback: (pattern) => list.where((item) =>
                        item.toLowerCase().contains(pattern.toLowerCase())),
                    itemBuilder: (context, suggestion) {
                      print("---------------------");
                      print(suggestion);
                      return ListTile(
                        title: Text(suggestion.toString()),
                      );
                    },
                    onSuggestionSelected: (suggestion) {
                      typeAheadController.text = suggestion.toString();
                      print(suggestion);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextfieldCustom(
                  mycontroller: labelController,
                  label: feeslabel,
                  maxleng: 5,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {}, child: Text("update")),
            ),
          ],
        )));
  }
}
