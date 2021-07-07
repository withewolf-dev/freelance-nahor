import 'package:flutter/material.dart';

class FreelanceStepCatg extends StatefulWidget {
  const FreelanceStepCatg({
    Key? key,
  }) : super(key: key);

  @override
  _FreelanceStepCatgState createState() => _FreelanceStepCatgState();
}

class _FreelanceStepCatgState extends State<FreelanceStepCatg> {
  List tutor = [
    "physics",
    "chemistry",
    "biology",
    "physics",
  ];

  List creative = ["music", "art", "music "];

  int? _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      //textBaseline: TextBaseline.alphabetic,
      children: [
        Wrap(
          spacing: 6.0,
          runSpacing: 6.0,
          children: List<Widget>.generate(tutor.length, (int index) {
            return ChoiceChip(
              label: Text(tutor[index]),
              selected: _value == index,
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? index : null;
                });
              },
            );
          }),
        ),
        Wrap(
          spacing: 6.0,
          runSpacing: 6.0,
          children: List<Widget>.generate(creative.length, (int index) {
            return ChoiceChip(
              label: Text(creative[index]),
              selected: _value == index,
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? index : null;
                });
              },
            );
          }),
        ),
      ],
    )));
  }
}
