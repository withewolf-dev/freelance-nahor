import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/widgets/auth/freelanceStepThree/bio.dart';
import 'package:kilo/widgets/auth/freelanceStepThree/bio_title.dart';
import 'package:kilo/widgets/auth/freelanceStepThree/payment.dart';
import 'package:kilo/widgets/auth/nextBtn.dart';
import 'package:kilo/router/app_router.gr.dart';

class FreelanceStepThree extends StatelessWidget {
  const FreelanceStepThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CreateFreelanceUser user = CreateFreelanceUser();

    return Scaffold(
      body: SafeArea(
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
                      BioTitle(),
                      SizedBox(
                        height: 40.0,
                      ),
                      Bio(),
                      SizedBox(
                        height: 40.0,
                      ),
                      PaymentPerDay(),
                    ],
                  ),
                ),
                nextButton(context: context, page: FreelanceStepFour())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
