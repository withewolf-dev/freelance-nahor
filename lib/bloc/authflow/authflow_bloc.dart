import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authflow_event.dart';
part 'authflow_state.dart';

class AuthflowBloc extends Bloc<AuthflowEvent, AuthflowState> {
  AuthflowBloc() : super(AuthflowInitial());

  @override
  Stream<AuthflowState> mapEventToState(
    AuthflowEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
