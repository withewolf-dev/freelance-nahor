import 'package:flutter/material.dart';
import 'package:kilo/pages/ProfileSheet.dart' as Sheet;
import 'package:kilo/widgets/feedpage/profilecard/profile_container.dart';

class ProfileCard extends StatefulWidget {
  final String name;
  final String bio;
  const ProfileCard({Key? key, required this.bio, required this.name})
      : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            showModalBottomSheet<void>(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                context: context,
                builder: (BuildContext context) => Sheet.ProfileSheet(
                      context: context,
                    ));
          },
          child: ProfileContainer(
            bio: widget.bio,
            name: widget.name,
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
