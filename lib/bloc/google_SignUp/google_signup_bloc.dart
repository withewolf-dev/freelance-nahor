import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kilo/repository/authentication.dart';
part 'google_signup_event.dart';
part 'google_signup_state.dart';

class GoogleSignUpBloc extends Bloc<GoogleSignupEvent, GoogleSignupState> {
  final _authentication = Authentication();
  GoogleSignUpBloc() : super(GoogleSignupInitial());

  @override
  Stream<GoogleSignupState> mapEventToState(
    GoogleSignupEvent event,
  ) async* {
    if (event is Signupfreelance) {
      yield SignupLoading(loadingState: true);
      try {
        UserCredential user = await _authentication.googleLogin();
        yield SignupLoading(loadingState: false);

        yield GoogleSignedUp(user: user);
      } catch (e) {
        yield GoogleSignupFail(e: e.toString());
        yield SignupLoading(loadingState: false);
      }
    }

    if (event is LogoutEvent) {
      await _authentication.logout();
      yield LogoutState();
    }
  }
}
