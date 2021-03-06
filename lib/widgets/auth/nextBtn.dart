import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kilo/bloc/authflow/authflow_bloc.dart';
import 'package:kilo/router/app_router.gr.dart';

Widget nextButton({required BuildContext context, required page, authevent}) =>
    Container(
      alignment: AlignmentDirectional.bottomEnd,
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<AuthflowBloc>(context).add(authevent());
          //context.pushRoute(page);
        },
        child: Text("next"),
      ),
    );
