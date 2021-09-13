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
      yield GoogleSigninLoading(loading: true);
      try {
        UserCredential? user = await _authentication.googleSignup();

        if (user != null) {
          bool userExist = await _authentication.userExist(user.user?.uid);

          if (userExist == true) {
            // await Future.delayed(Duration(seconds: 2));

            yield PushToFeed();

            yield GoogleSigninLoading(loading: false);
          }
          if (userExist == false) {
            await _authentication.logout();

            await Future.delayed(Duration(seconds: 1));

            yield GoogleSigninLoading(loading: false);

            yield NoUserAccount();
          }
        } else {
          yield GoogleSigninLoading(loading: false);
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
