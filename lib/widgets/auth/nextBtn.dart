import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

Widget nextButton({required BuildContext context, required page}) => Container(
      alignment: AlignmentDirectional.bottomEnd,
      child: ElevatedButton(
        onPressed: () {
          context.pushRoute(page);
        },
        child: Text("next"),
      ),
    );
