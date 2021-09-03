import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
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
        UserCredential user = await _authentication.googleSignup();
        bool noExistingUser = await _authentication.userExist(user.user?.uid);

        if (noExistingUser == true) {
          await _authentication.logout();
          yield SignupLoading(loadingState: false);
          yield AccountExist();
        }
        if (noExistingUser == false) {
          await addUserType(event.type, user.user!.uid);
          yield PushToFeed();
          await Future.delayed(Duration(seconds: 1));

          yield SignupLoading(loadingState: false);
        }
      } catch (e) {
        yield GoogleSignupFail(e: e.toString());
        yield SignupLoading(loadingState: false);
      }
    }

    if (event is SignupHire) {
      yield SignupLoading(loadingState: true);
      try {
        UserCredential user = await _authentication.googleSignup();
        bool userExist = await _authentication.userExist(user.user?.uid);

        if (userExist == true) {
          await _authentication.logout();
          yield SignupLoading(loadingState: false);
          yield AccountExist();
        }
        if (userExist == false) {
          await addUserType(event.type, user.user!.uid);
          yield UserType(type: "hire");
          yield PushToFeed();
          await Future.delayed(Duration(seconds: 1));

          yield SignupLoading(loadingState: false);
        }

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
