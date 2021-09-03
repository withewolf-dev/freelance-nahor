import 'package:flutter/material.dart';
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
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ProductName(
            name: "educational",
          ),
          ProductName(
            name: "artist",
          ),
          ProductName(
            name: "fluet",
          ),
          ProductName(
            name: "Editor",
          ),
          ProductName(
            name: "artist",
          ),
        ],
      ),
    );
  }
}

class ProductName extends StatelessWidget {
  final String name;
  const ProductName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          shadowColor: Colors.red,
          elevation: 0,
          side: BorderSide(color: Colors.orange, width: 2),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
