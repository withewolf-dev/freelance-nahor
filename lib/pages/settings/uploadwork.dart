import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class UploadWorkPage extends StatefulWidget {
  UploadWorkPage({Key? key}) : super(key: key);

  @override
  _UploadWorkPageState createState() => _UploadWorkPageState();
}

class _UploadWorkPageState extends State<UploadWorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                "upload work  url ",
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Storage().uploadFile();
        },
        child: const Icon(Icons.upload_file_sharp),
        backgroundColor: Colors.green,
      ),
    );
  }
}
