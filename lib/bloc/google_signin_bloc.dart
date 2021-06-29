import 'dart:async';

import 'package:bloc/bloc.dart';
part 'google_signin_event.dart';
part 'google_signin_state.dart';

class GoogleSigninBloc extends Bloc<GoogleSigninEvent, GoogleSigninState> {
  GoogleSigninBloc() : super(GoogleSigninInitial());

  @override
  Stream<GoogleSigninState> mapEventToState(
    GoogleSigninEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
