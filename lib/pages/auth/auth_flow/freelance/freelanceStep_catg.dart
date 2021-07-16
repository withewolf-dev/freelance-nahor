import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

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
    "assamese",
    "social science"
  ];

  List music = ["music", "art", "music "];

  int? _tutor;
  int? _music;

  String category = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: BlocListener<AuthflowBloc, AuthflowState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is SelectCatgDone) {
          context.pushRoute(FreelanceStepThree());
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //textBaseline: TextBaseline.alphabetic,
        children: [
          Text("Select one category to freelance",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text("tutor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Wrap(
            spacing: 6.0,
            runSpacing: 6.0,
            children: List<Widget>.generate(tutor.length, (int index) {
              return ChoiceChip(
                label: Text(tutor[index]),
                disabledColor: Color(0x00ff0000),
                selected: _tutor == index,
                onSelected: (bool selected) {
                  setState(() {
                    _tutor = selected ? index : null;
                    _music = null;
                    category = tutor[index];
                  });
                  print("catg $category");
                },
              );
            }),
          ),
          Text("music",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Wrap(
            spacing: 6.0,
            runSpacing: 6.0,
            children: List<Widget>.generate(music.length, (int index) {
              return ChoiceChip(
                label: Text(music[index]),
                selected: _music == index,
                onSelected: (bool selected) {
                  setState(() {
                    _music = selected ? index : null;
                    _tutor = null;
                    category = music[index];
                  });
                },
              );
            }),
          ),
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            child: ElevatedButton(
              onPressed: category != ""
                  ? () {
                      BlocProvider.of<AuthflowBloc>(context)
                          .add(SelectCatgEvent(category: category));
                    }
                  : null,
              child: Text("next"),
            ),
          ),
        ],
      ),
    )));
  }
}
