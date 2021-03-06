import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/searchbloc/searchbloc_bloc.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    BlocProvider.of<SearchBloc>(context)
        .add(Typing(searchTerm: myController.text));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchBloc, SearchblocState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is SearchTerm) {
          print("state.searchTerm ${state.searchTerm}");
        }
      },
      child: Container(
        padding: EdgeInsets.only(top: 4),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(244, 243, 243, 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black87,
                  size: 20,
                ),
                hintText: "Search you're looking for",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
            controller: myController,
          ),
        ),
      ),
    );
  }
}
