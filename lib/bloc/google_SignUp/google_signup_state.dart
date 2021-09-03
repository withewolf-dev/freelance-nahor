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

class AccountExist extends GoogleSignupState {}

class LogoutState extends GoogleSignupState {}

class UserType extends GoogleSignupState {
  final String type;

  UserType({required this.type});
}

class SignupLoading extends GoogleSignupState {
  final bool loadingState;
  SignupLoading({required this.loadingState});
}
