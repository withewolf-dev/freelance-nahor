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
    "computer",
    "law",
    "physics",
    "chemistry",
    "coomputer"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: UniversalAppBar(),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                    controller: typeAheadController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        labelText: 'fees per',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
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
            TextfieldCustom(
              mycontroller: labelController,
              label: feeslabel,
              maxleng: 4,
            ),
            ElevatedButton(onPressed: () {}, child: Text("update"))
          ],
        )));
  }
}
