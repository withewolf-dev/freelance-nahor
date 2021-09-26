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
      bool signedIn = (await _authentication.googleSignin.isSignedIn());

      if (signedIn) {
        _authentication.googleSignin.disconnect();
      }
      try {
        UserCredential? user = await _authentication.googleSignup();

        if (user != null) {
          bool userExist = await _authentication.userExist(user.user?.uid);

          if (userExist == true) {
            // yield PushToFeed();
            yield IsUser(isUser: true);
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

    if (event is OnGoogleSignOut) {
      yield GoogleSigninLoading(loading: true);

      try {
        await _authentication.logout();
        yield IsUser(isUser: false);
        yield GoogleSigninLoading(loading: false);
      } catch (e) {
        print(e);
      }
    }
  }
}
