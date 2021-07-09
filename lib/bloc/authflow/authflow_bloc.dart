import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:kilo/repository/freelance/create-freelanceUser.dart';
import 'package:meta/meta.dart';

part 'authflow_event.dart';
part 'authflow_state.dart';

class AuthflowBloc extends Bloc<AuthflowEvent, AuthflowState> {
  AuthflowBloc() : super(AuthflowInitial());

  CreateFreelanceUser user = CreateFreelanceUser();

  @override
  Stream<AuthflowState> mapEventToState(
    AuthflowEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is StepOneEvent) {
      //yield CreateFreelanceUser(session: event.session, dept: event.dept);
      user.setSession(event.session);
      user.setDept(event.dept);
      yield StepOneDone();
    }
    if (event is StepTwoEvent) {
      //  yield CreateFreelanceUser(campus: event.campus, hometown: event.hometown);
      user.setCampus(event.campus);
      user.setHometown(event.hometown);
      yield StepTwoDone();
    }

    if (event is SelectCatgEvent) {
      user.setCategory(event.category);
      yield SelectCatgDone();
    }

    if (event is RegistrationDone) {}
  }
}
