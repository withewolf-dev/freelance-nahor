import 'package:flutter/material.dart';
import 'package:kilo/widgets/feedpage/searchBox.dart';
import 'package:kilo/widgets/searchscreen/searchresult.dart';
import 'package:auto_route/auto_route.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SearchBox(),
        //brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            //context.pushRoute(Setting());
            context.popRoute();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 10,
            ),
            Flexible(child: SearchResult())
          ],
        ),
      ),
    );
  }
}
