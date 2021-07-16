import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:meta/meta.dart';

part 'google_signin_event.dart';
part 'google_signin_state.dart';

class GoogleSigninBloc extends Bloc<GoogleSigninEvent, GoogleSigninState> {
  GoogleSigninBloc() : super(GoogleSigninInitial());

  final _authentication = Authentication();

  @override
  Stream<GoogleSigninState> mapEventToState(
    GoogleSigninEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is OnGoogleSignIn) {
      yield GoogleSigninLoading();
      try {
        UserCredential? user = await _authentication.googleSignIn();
        if (user != null) {
          yield GoogleSignIn(user: user);
        } else {
          yield NoUserAccount();
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
