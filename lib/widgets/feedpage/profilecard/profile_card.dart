import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String bio;
  final String freelancerId;
  final String bioTitle;
  final String price;
  final bool isActive;
  final String profilePic;

  const ProfileCard(
      {Key? key,
      required this.name,
      required this.bio,
      required this.freelancerId,
      required this.bioTitle,
      required this.price,
      required this.isActive,
      required this.profilePic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 4 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        // blurRadius: 2.0,
                        // spreadRadius: 1.0,
                        color: Color(0xff30221f),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        profilePic,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name.split(" ").first,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  bioTitle,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\u{20B9}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffd17842),
                          ),
                        ),
                        Text(
                          price,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     Text(
                    //       '4.5',
                    //       style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           color: Color(0xffd17842),
                    //           fontSize: 12),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                    //       child: Container(
                    //         decoration: BoxDecoration(
                    //           color: Color(0xffd17842),
                    //           borderRadius: BorderRadius.circular(5.0),
                    //         ),
                    //         child:
                    //             Icon(Icons.star, size: 15, color: Colors.white),
                    //       ),
                    //     )
                    //   ],
                    // )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
