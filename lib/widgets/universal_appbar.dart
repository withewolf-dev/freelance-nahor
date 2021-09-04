import 'package:flutter/material.dart';

class UniversalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  UniversalAppBar({Key? key, this.title})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);
  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null
          ? Text(
              title!,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
            )
          : null,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    );
  }
}
