import 'package:flutter/material.dart';
import 'package:kilo/pages/ProfileSheet.dart' as Sheet;

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

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
          child: container(),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

Widget container() => Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1509042239860-f550ce710b93?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80')),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    color: Color(0xff30221f),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1509042239860-f550ce710b93?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80",
                  ),
                ),
                borderRadius: BorderRadius.circular(20.0),
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
                  "5 Coffee Beans you\n Must Try!",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "With Oat Milk",
                  style: TextStyle(
                    color: Color(0xffaeaeae),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$\t",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffd17842),
                          ),
                        ),
                        Text(
                          "4.20",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffd17842),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(Icons.add, size: 30, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );

Widget card() => Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 150,
          //width: 1000,
          decoration: BoxDecoration(
            color: Color(0xff171b22),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        color: Color(0xff30221f),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1509042239860-f550ce710b93?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80",
                      ),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
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
                      "5 Coffee Beans you\n Must Try!",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "With Oat Milk",
                      style: TextStyle(
                        color: Color(0xffaeaeae),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "\$\t",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd17842),
                              ),
                            ),
                            Text(
                              "4.20",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffd17842),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Icon(Icons.add, size: 30, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 15),
          height: 25.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: Color(0xff231715),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
                size: 15,
                color: Color(0xffd17842),
              ),
              Text(
                "4.5",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
