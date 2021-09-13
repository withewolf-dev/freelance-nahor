import 'package:flutter/material.dart';
import 'package:kilo/pages/ProfileSheet.dart' as Sheet;
import 'package:kilo/widgets/feedpage/profilecard/profile_card.dart';

class ProfileContainer extends StatefulWidget {
  final String name;
  final String bio;
  final String freelancerId;

  const ProfileContainer(
      {Key? key,
      required this.bio,
      required this.name,
      required this.freelancerId})
      : super(key: key);

  @override
  _ProfileContainerState createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
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
                      freelancerId: widget.freelancerId,
                      context: context,
                      name: widget.name,
                      bio: widget.bio,
                    ));
          },
          child: ProfileCard(
            freelancerId: widget.freelancerId,
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
