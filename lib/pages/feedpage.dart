import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kilo/widgets/custom-appbar.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/widgets/feedpage/category.dart' as catg;
import 'package:kilo/widgets/feedpage/profilecard/profiles_list.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: CustomAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FeedHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  const catg.Category(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ProfilesList(),
            )
          ],
        ),
      )),
    );
  }
}

class SearchButton extends StatefulWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color.fromRGBO(244, 243, 243, 1),
            borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          onTap: () {
            context.pushRoute(SearchScreen());
          },
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                hintText: "Search by name",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
          ),
        ));
  }
}

class FeedHeader extends StatelessWidget {
  FeedHeader({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: user != null
                      ? NetworkImage(user!.photoURL.toString())
                      : null,
                  radius: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: user != null
                      ? Text(
                          user!.displayName!.toString().split(" ").first,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      : null,
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Discover',
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          SearchButton(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
