import 'package:flutter/material.dart';

class ProfileSheetHeader extends StatelessWidget {
  final String name;
  const ProfileSheetHeader({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1607288946505-df9c0a0f3545?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80"),
              radius: 30.0,
            ),
            title: Text(name),
            subtitle: Text('Top rated'),
          ),
        ],
      ),
    );
  }
}
