import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/bio_bloc/bio_bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';
import 'package:kilo/widgets/universal_appbar.dart';

class ChangeBioPage extends StatelessWidget {
  ChangeBioPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController bioController = TextEditingController();
  final TextEditingController bioTitleController = TextEditingController();

  final String bio = "Write your Bio here";
  final String bioTitle = "Write your Bio Title here";
  final snackBar = SnackBar(content: Text("Bio updated"));
  @override
  Widget build(BuildContext context) {
    return BlocListener<BioBloc, BioState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is UpdateSnackbar) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Scaffold(
          appBar: UniversalAppBar(),
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  TextfieldCustom(
                    mycontroller: bioController,
                    label: bio,
                    maxleng: 60,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextfieldCustom(
                    mycontroller: bioTitleController,
                    label: bioTitle,
                    maxleng: 200,
                    maxline: 8,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<BioBloc, BioState>(
                  builder: (context, state) {
                    if (state is Loading) {
                      if (state.loading == true) {
                        return CircularProgressIndicator();
                      }
                    }
                    return OutlinedButton(
                        onPressed: () {
                          BlocProvider.of<BioBloc>(context).add(UpdateBio(
                              bio: bioController.text,
                              bioTitle: bioTitleController.text));
                        },
                        child: Text("update"));
                  },
                ),
              )
            ],
          ))),
    );
  }
}
