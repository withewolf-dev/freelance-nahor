import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/category_bloc/catgeorybloc_bloc.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final CategoryblocEvent event;
  const CategoryCard({Key? key, required this.image, required this.event})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<CategoryBloc>(context).add(event);
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
