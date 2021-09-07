import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kilo/router/app_router.gr.dart';

class AccountOptionRow extends StatelessWidget {
  final String title;
  final PageRouteInfo page;
  const AccountOptionRow({Key? key, required this.title, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(page);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[900],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
