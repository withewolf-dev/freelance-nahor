import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({Key? key, required this.context}) : super(key: key);

  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return makedismissiable(
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
              cancelButton(),
              divider(),
              header(),
              bio(),
              Slider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget makedismissiable({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );

  Widget cancelButton() => Container(
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

Widget header() => Card(
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
            title: Text('Gitartha Kashyap'),
            subtitle: Text('Top rated'),
          ),
        ],
      ),
    );

Widget divider() => Divider(
      height: 10,
      thickness: 1,
      indent: 0,
      endIndent: 0,
    );

Widget bio() => Card(
      elevation: 0,
      child: Column(
        children: <Widget>[
          Container(
            width: 380,
            child: Text(
              "I will make web apps and mobile apps for you",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 380,
            child: Text(
              "I am a professional copywriter and top-rated seller on Fiverr.My service is perfect for press releases, bios, descriptions, and more. I've been privileged to work with people and businesses of all backgrounds. From artists and start-ups to business owners, realtors and entrepreneurs, anything goes! My goal is to provide impactful, reader-friendly, and compelling content for your needs.",
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //CustomTabar(),
        ],
      ),
    );

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

Widget slider() => CarouselSlider(
      options: CarouselOptions(),
      items: imgList
          .map((item) => Container(
                child: Center(
                    child: Image.network(
                  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                  fit: BoxFit.cover,
                  width: 1000,
                  height: 350,
                )),
              ))
          .toList(),
    );

class Slider extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        autoPlay: true,
      ),
      items: imgList
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(
                      e,
                      width: 1050,
                      height: 350,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
