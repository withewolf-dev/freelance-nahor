import 'package:flutter/material.dart';
import 'package:kilo/bloc/category_bloc/catgeorybloc_bloc.dart';
import 'package:kilo/widgets/feedpage/category_card.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
            image: 'assets/images/one.jpg',
            event: MusicCatgEvnt(),
          ),
          CategoryCard(
            image: 'assets/images/two.jpg',
            event: EduCatgEvnt(),
          ),
          CategoryCard(
            image: 'assets/images/three.jpg',
            event: ArtCatgEvnt(),
          ),
          CategoryCard(
            image: 'assets/images/four.jpg',
            event: WebdevCatgEvnt(),
          ),
        ],
      ),
    );
  }
}
