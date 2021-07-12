import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/repository/freelance/create-freelanceUser.dart';
import 'package:kilo/widgets/auth/freelanceStepThree/bio.dart';
import 'package:kilo/widgets/auth/freelanceStepThree/bio_title.dart';
import 'package:kilo/widgets/auth/freelanceStepThree/payment.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';
import 'package:kilo/router/app_router.gr.dart';

class FreelanceStepThree extends StatefulWidget {
  const FreelanceStepThree({Key? key}) : super(key: key);

  @override
  _FreelanceStepThreeState createState() => _FreelanceStepThreeState();
}

class _FreelanceStepThreeState extends State<FreelanceStepThree> {
  CreateFreelanceUser user = CreateFreelanceUser();

  String bio = "";
  String biotitle = "";
  String payment = "";

  void getBio(data) {
    setState(() {
      bio = data;
    });
  }

  void getBioTitle(data) {
    setState(() {
      biotitle = data;
    });

    print(biotitle);
  }

  void getPayment(data) {
    setState(() {
      payment = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthflowBloc, AuthflowState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is StepThreeDone) {
            BlocProvider.of<AuthflowBloc>(context).add(RegistrationDone());
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        BioTitle(getBioTitle: getBioTitle),
                        SizedBox(
                          height: 40.0,
                        ),
                        Bio(getBio: getBio),
                        SizedBox(
                          height: 40.0,
                        ),
                        PaymentPerDay(getPayment: getPayment),
                      ],
                    ),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: ElevatedButton(
                      onPressed: () {
                        // print(bio);
                        BlocProvider.of<AuthflowBloc>(context).add(
                            StepThreeEvent(
                                bio: bio,
                                biotitle: biotitle,
                                payment: payment));
                        //context.pushRoute(page);
                      },
                      child: Text("next"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
