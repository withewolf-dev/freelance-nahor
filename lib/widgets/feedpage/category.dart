import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kilo/bloc/category_bloc/catgeorybloc_bloc.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CategoryName(),
    );
  }
}

class CategoryName extends StatefulWidget {
  const CategoryName({
    Key? key,
  }) : super(key: key);

  @override
  _CategoryNameState createState() => _CategoryNameState();
}

class _CategoryNameState extends State<CategoryName> {
  int selectedIndex = 1;
  static List categoriesList = ["educational", "artist", "editor"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.red,
                elevation: 0,
                side: selectedIndex == index
                    ? BorderSide(color: Colors.orange, width: 2)
                    : null,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              onPressed: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Text(
                categoriesList[index],
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
