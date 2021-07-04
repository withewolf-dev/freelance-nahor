import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kilo/repository/authentication.dart';
part 'google_signin_event.dart';
part 'google_signin_state.dart';

class GoogleSigninBloc extends Bloc<GoogleSigninEvent, GoogleSigninState> {
  final _authentication = Authentication();
  GoogleSigninBloc() : super(GoogleSigninInitial());

  @override
  Stream<GoogleSigninState> mapEventToState(
    GoogleSigninEvent event,
  ) async* {
    if (event is Signinasfreelance) {
      yield SigninLoading(loadingState: true);
      try {
        UserCredential user = await _authentication.googleLogin();
        yield SigninLoading(loadingState: false);

        yield GoogleSignedIn(user: user);
      } catch (e) {
        yield GoogleSigninFail(e: e.toString());
        yield SigninLoading(loadingState: false);
      }
    }

    if (event is LogoutEvent) {
      await _authentication.logout();
      yield LogoutState();
    }
  }
}
