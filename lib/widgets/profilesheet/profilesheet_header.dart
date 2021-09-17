import 'package:flutter/material.dart';

class ProfileSheetHeader extends StatelessWidget {
  final String name;
  final String profilePic;
  const ProfileSheetHeader(
      {Key? key, required this.name, required this.profilePic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profilePic),
              radius: 30.0,
            ),
            title: Text(name.split(" ").first),
            subtitle: Text('Top rated'),
          ),
        ],
      ),
    );
  }
}
