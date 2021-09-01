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

class UserExist extends GoogleSignupState {}

class PushToFeed extends GoogleSignupState {}

class NoUserSnack extends GoogleSignupState {}

class LogoutState extends GoogleSignupState {}

class SignupLoading extends GoogleSignupState {
  final bool? loadingState;
  SignupLoading({this.loadingState});
}
