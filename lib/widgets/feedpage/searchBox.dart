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
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color.fromRGBO(244, 243, 243, 1),
            borderRadius: BorderRadius.circular(15)),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black87,
              ),
              hintText: "Search you're looking for h",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
          controller: myController,
        ),
      ),
    );
  }
}
