part of 'google_signup_bloc.dart';

abstract class GoogleSignupState {}

class GoogleSignupInitial extends GoogleSignupState {}

class GoogleSignupFail extends GoogleSignupState {
  final String e;
  GoogleSignupFail({required this.e});
}

class GoogleSignedUp extends GoogleSignupState {
  final UserCredential user;
  GoogleSignedUp({required this.user});
}

class LogoutState extends GoogleSignupState {}

class SignupLoading extends GoogleSignupState {
  final bool loadingState;
  SignupLoading({required this.loadingState});
}
