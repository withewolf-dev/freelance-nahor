import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class CategoryCard extends StatelessWidget {
  final String image;
  const CategoryCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("card");
      },
      child: AspectRatio(
        aspectRatio: 4 / 7,
        child: Container(
          margin: EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                  0.1,
                  0.9
                ], colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1)
                ])),
          ),
        ),
      ),
    );
  }
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
          ),
          CategoryCard(
            image: 'assets/images/two.jpg',
          ),
          CategoryCard(
            image: 'assets/images/three.jpg',
          ),
          CategoryCard(
            image: 'assets/images/four.jpg',
          ),
        ],
      ),
    );
  }
}
