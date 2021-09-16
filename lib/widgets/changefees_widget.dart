import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/updatefee_bloc/updatefee_bloc.dart';
import 'package:kilo/widgets/settings/textfieldcustom.dart';

class ChangeFeesWidget extends StatelessWidget {
  final String durationLabel;
  final String feesLabel;
  ChangeFeesWidget({
    Key? key,
    required this.durationLabel,
    required this.feesLabel,
  }) : super(key: key);

  final TextEditingController labelController = TextEditingController();
  final TextEditingController typeAheadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "duration: put duration as one of the following (day/month/week/year). e.g Rs 400/month",
                style: TextStyle(fontSize: 11),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextfieldCustom(
              mycontroller: typeAheadController,
              label: durationLabel,
              hintext: "duration",
              //maxleng: 5,
            ),
            SizedBox(
              height: 20,
            ),
            TextfieldCustom(
              mycontroller: labelController,
              label: feesLabel,
              hintext: "price",
              //maxleng: 5,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: () {
            BlocProvider.of<UpdatefeeBloc>(context).add(UpdateFees(
                duration: typeAheadController.text,
                fees: labelController.text));
          }, child: BlocBuilder<UpdatefeeBloc, UpdatefeeState>(
            builder: (context, state) {
              if (state is FeesLoading) {
                if (state.loading == true) {
                  return CircularProgressIndicator();
                }
              }
              return Text("update");
            },
          )),
        ),
      ],
    );
  }
}
