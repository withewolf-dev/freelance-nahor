import 'package:flutter/material.dart';
import 'package:kilo/widgets/feedpage/profilecard/slider.dart' as sliderProfile;
import 'package:kilo/widgets/profilesheet/profilesheet_bio.dart';
import 'package:kilo/widgets/profilesheet/profilesheet_header.dart';
import 'package:kilo/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ProfileSheet extends StatelessWidget {
  final String name;
  final String bio;
  final String freelancerId;
  final String bioTitle;
  final String price;
  final bool isActive;
  final String profilePic;

  const ProfileSheet(
      {Key? key,
      required this.context,
      required this.name,
      required this.bio,
      required this.freelancerId,
      required this.bioTitle,
      required this.price,
      required this.isActive,
      required this.profilePic})
      : super(key: key);

  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Makedissmissiable(
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.6,
        builder: (_, controller) => Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          padding: EdgeInsets.all(16),
          child: ListView(
            controller: controller,
            children: <Widget>[
              const Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: const CancelButton(),
              ),
              divider(),
              ProfileSheetHeader(
                profilePic: profilePic,
                name: name,
              ),
              ProfileSheetBio(
                bioTitle: bioTitle,
                bio: bio,
              ),
              sliderProfile.Slider(
                freelancerId: freelancerId,
              ),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                  onPressed: () {
                    context.pushRoute(RequestRoute(
                      freelancerId: freelancerId,
                    ));
                  },
                  child: Text(
                    "Ping",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.cancel_outlined,
            size: 30,
          )),
    );
  }
}

Widget divider() => Divider(
      height: 10,
      thickness: 1,
      indent: 0,
      endIndent: 0,
    );

class Makedissmissiable extends StatelessWidget {
  final Widget child;
  const Makedissmissiable({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: child,
      ),
    );
  }
}
