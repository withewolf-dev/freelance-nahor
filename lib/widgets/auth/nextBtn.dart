import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/bloc/google_Signin/google_signin_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';

Widget nextButton({required BuildContext context, required page, Authevent}) =>
    Container(
      alignment: AlignmentDirectional.bottomEnd,
      child: ElevatedButton(
        onPressed: () {
          // BlocProvider.of<AuthflowBloc>(context).add(Authevent());
          context.pushRoute(page);
        },
        child: Text("next"),
      ),
    );
