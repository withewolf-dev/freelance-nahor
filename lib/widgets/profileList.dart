import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(240),
        child: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                context.popRoute();
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          //centerTitle: true,
          flexibleSpace: ClipRRect(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1471478331149-c72f17e33c73?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80",
                    ),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.orange.withOpacity(0), BlendMode.darken)),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
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
            ),
            Card(
              elevation: 0,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 380,
                    child: Text(
                      "I will make web apps and mobile apps for you",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 380,
                    child: Text(
                      "I am a professional copywriter and top-rated seller on Fiverr.My service is perfect for press releases, bios, descriptions, and more. I've been privileged to work with people and businesses of all backgrounds. From artists and start-ups to business owners, realtors and entrepreneurs, anything goes! My goal is to provide impactful, reader-friendly, and compelling content for your needs.",
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTabar(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class CustomTabar extends StatelessWidget {
  const CustomTabar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text('Tabs Inside Body',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
            DefaultTabController(
                length: 4, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'Tab 1'),
                            Tab(text: 'Tab 2'),
                            Tab(text: 'Tab 3'),
                            Tab(text: 'Tab 4'),
                          ],
                        ),
                      ),
                      Container(
                          height: 400, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                              child: Center(
                                child: Text('Display Tab 1',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text('Display Tab 2',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text('Display Tab 3',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text('Display Tab 4',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ]))
                    ])),
          ]),
    );
  }
}
