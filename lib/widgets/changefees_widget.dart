import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:kilo/bloc/updatefee_bloc/updatefee_bloc.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';

class ChangeFeesWidget extends StatelessWidget {
  final String durationLabel;
  final String feesLabel;
  ChangeFeesWidget({
    Key? key,
    required this.durationLabel,
    required this.feesLabel,
  }) : super(key: key);

  final TextEditingController labelController = TextEditingController();
  final TextEditingController typeAheadController = TextEditingController();

  final List<String> list = [
    "days",
    "hour",
    "months",
    "weekly",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
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
                        labelText: durationLabel,
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
              label: feesLabel,
              //maxleng: 5,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: () {
            BlocProvider.of<UpdatefeeBloc>(context).add(UpdateFees(
                duration: typeAheadController.text,
                fees: labelController.text));
          }, child: BlocBuilder<UpdatefeeBloc, UpdatefeeState>(
            builder: (context, state) {
              if (state is FeesLoading) {
                if (state.loading == true) {
                  return CircularProgressIndicator();
                }
              }
              return Text("update");
            },
          )),
        ),
      ],
    );
  }
}
