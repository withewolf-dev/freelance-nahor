import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/updatecategory_bloc/updatecategory_bloc.dart';

class ChangeCatgWidget extends StatefulWidget {
  List categoriesList;
  int selectedIndex;
  String categoryName;

  ChangeCatgWidget(
      {Key? key,
      required this.selectedIndex,
      required this.categoriesList,
      required this.categoryName})
      : super(key: key);

  @override
  _ChangeCatgWidgetState createState() => _ChangeCatgWidgetState();
}

class _ChangeCatgWidgetState extends State<ChangeCatgWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Wrap(
            spacing: 25.0, // gap between adjacent chips
            runSpacing: 25.0, // gap between lines
            children: widget.categoriesList
                .map(
                  (e) => InkWell(
                    onTap: () {
                      setState(() {
                        widget.selectedIndex = widget.categoriesList.indexOf(e);
                        widget.categoryName = widget
                            .categoriesList[widget.categoriesList.indexOf(e)];
                      });
                    },
                    child: Chip(
                      backgroundColor: widget.selectedIndex ==
                              widget.categoriesList.indexOf(e)
                          ? Colors.black54
                          : null,
                      label: Text(e),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(onPressed: () {
              BlocProvider.of<UpdatecategoryBloc>(context).add(UpdateCatg(
                  categoryName: widget.categoryName,
                  idx: widget.selectedIndex));
            }, child: BlocBuilder<UpdatecategoryBloc, UpdatecategoryState>(
              builder: (context, state) {
                if (state is CategoryLoading) {
                  if (state.loading == true) {
                    return CircularProgressIndicator();
                  }
                }
                return Text("Update");
              },
            )),
          ),
        )
      ],
    );
  }
}
