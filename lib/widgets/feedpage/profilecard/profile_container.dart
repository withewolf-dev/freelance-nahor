import 'package:flutter/material.dart';
import 'package:kilo/pages/ProfileSheet.dart' as Sheet;
import 'package:kilo/widgets/feedpage/profilecard/profile_card.dart';

class ProfileContainer extends StatefulWidget {
  final String name;
  final String bio;
  final String freelancerId;
  final String bioTitle;
  final String price;
  final bool isActive;
  final String profilePic;

  const ProfileContainer(
      {Key? key,
      required this.bio,
      required this.name,
      required this.freelancerId,
      required this.bioTitle,
      required this.price,
      required this.isActive,
      required this.profilePic})
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
                      bioTitle: widget.bioTitle,
                      isActive: widget.isActive,
                      price: widget.price,
                      profilePic: widget.profilePic,
                    ));
          },
          child: ProfileCard(
            freelancerId: widget.freelancerId,
            bio: widget.bio,
            name: widget.name,
            bioTitle: widget.bioTitle,
            isActive: widget.isActive,
            price: widget.price,
            profilePic: widget.profilePic,
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
