import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
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
    );
  }
}
