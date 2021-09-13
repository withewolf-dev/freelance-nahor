import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/request_bloc/request_bloc.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class RequestPage extends StatelessWidget {
  RequestPage({Key? key}) : super(key: key);
  final snackBar = SnackBar(content: Text("Request send"));

  final addressController = TextEditingController();
  final phonenumController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RequestBloc, RequestState>(
      listener: (context, state) {
        // TODO: implement listener

        if (state is ReqSnackbar) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Scaffold(
          appBar: UniversalAppBar(),
          body: SingleChildScrollView(
            child: Container(
              height: 800,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        TextField(
                          controller: phonenumController,
                          maxLength: 10,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Phone no.'),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          controller: addressController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter city/town name'),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          controller: descriptionController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Description for your task.'),
                          maxLength: 150,
                          maxLines: 7,
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<RequestBloc>(context).add(SendRequest(
                            address: addressController.text,
                            descp: descriptionController.text,
                            phonenum: phonenumController.text));
                      },
                      child: BlocBuilder<RequestBloc, RequestState>(
                        builder: (context, state) {
                          if (state is ReqLoading) {
                            if (state.loading == true) {
                              return CircularProgressIndicator();
                            }
                          }
                          return Text("Send Request");
                        },
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black)),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
