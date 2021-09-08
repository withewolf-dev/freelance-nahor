import 'package:flutter/material.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeCatgPage extends StatefulWidget {
  ChangeCatgPage({Key? key}) : super(key: key);

  static List categoriesList = ["educational", "artist", "editor"];

  @override
  _ChangeCatgPageState createState() => _ChangeCatgPageState();
}

class _ChangeCatgPageState extends State<ChangeCatgPage> {
  final controller = TextEditingController();

  int selectedIndex = 1;
  static List categoriesList = ["educational", "artist", "editor"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              spacing: 15.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              children: categoriesList
                  .map(
                    (e) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = categoriesList.indexOf(e);
                        });
                      },
                      child: Chip(
                        backgroundColor:
                            selectedIndex == categoriesList.indexOf(e)
                                ? Colors.black54
                                : null,
                        label: Text(e),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  onPressed: () {
                    print("object");
                  },
                  child: Text("Update")),
            ),
          )
        ],
      )),
    );
  }
}
