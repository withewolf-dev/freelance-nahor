import 'package:flutter/material.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class FreelanceStepOne extends StatelessWidget {
  FreelanceStepOne({Key? key}) : super(key: key);

  final List<String> list = [
    "computer",
    "law",
    "physics",
    "chemistry",
    "coomputer"
  ];

  final TextEditingController typeAheadController = TextEditingController();

  void nextBtn() {}
  final bool isbool = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              header(),
              ChooseDept(
                  list: list,
                  typeAheadController: typeAheadController,
                  isbool: isbool),
              nextButton(isbool: isbool),
            ],
          ),
        ),
      ),
    );
  }
}

Widget header() => Column(
      children: <Widget>[
        Text(
          "Welcome",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          maxRadius: 40.0,
          backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80",
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "Gitartha Kashyap",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 25.0,
        ),
      ],
    );

Widget choosedept(
        {required BuildContext context,
        required List list,
        required typeAheadController,
        required bool isbool}) =>
    TypeAheadField(
      textFieldConfiguration: TextFieldConfiguration(
          controller: typeAheadController,
          decoration: InputDecoration(labelText: 'City')),
      suggestionsCallback: (pattern) => list
          .where((item) => item.toLowerCase().contains(pattern.toLowerCase())),
      itemBuilder: (context, suggestion) {
        print("---------------------");
        print(suggestion);
        return ListTile(
          title: Text(suggestion.toString()),
        );
      },
      onSuggestionSelected: (suggestion) {
        typeAheadController.text = suggestion;
      },
    );

Widget nextButton({required bool isbool}) => ElevatedButton(
      onPressed: isbool ? () {} : null,
      child: Text("next"),
    );

class ChooseDept extends StatefulWidget {
  ChooseDept({
    Key? key,
    required this.typeAheadController,
    required this.list,
    required this.isbool,
  }) : super(key: key);

  final typeAheadController;
  final List list;
  bool isbool;
  @override
  _ChooseDeptState createState() => _ChooseDeptState();
}

class _ChooseDeptState extends State<ChooseDept> {
  @override
  Widget build(BuildContext context) {
    return TypeAheadField(
      textFieldConfiguration: TextFieldConfiguration(
          controller: widget.typeAheadController,
          decoration: InputDecoration(labelText: 'City')),
      suggestionsCallback: (pattern) => widget.list
          .where((item) => item.toLowerCase().contains(pattern.toLowerCase())),
      itemBuilder: (context, suggestion) {
        print("---------------------");
        print(suggestion);
        return ListTile(
          title: Text(suggestion.toString()),
        );
      },
      onSuggestionSelected: (suggestion) {
        widget.typeAheadController.text = suggestion;
        setState(() {
          widget.isbool = true;
        });
      },
    );
  }
}
