import 'package:flutter/material.dart';
import 'package:kilo/widgets/appbar.dart';
import 'package:kilo/widgets/feedpage/searchBox.dart';
import 'package:kilo/widgets/searchscreen/searchresult.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [SearchBox(), Flexible(child: SearchResult())],
        ),
      ),
    );
  }
}
