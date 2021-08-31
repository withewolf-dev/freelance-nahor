part of 'google_signup_bloc.dart';

//@immutable
abstract class GoogleSignupEvent {}

class SignupUserType extends GoogleSignupEvent {
  final String type;

  SignupUserType({required this.type});
}

class Signupfreelance extends GoogleSignupEvent {
  final String type;

  Signupfreelance({required this.type});
}

class SignupHire extends GoogleSignupEvent {
  final String type;

  SignupHire({required this.type});
}

class LogoutEvent extends GoogleSignupEvent {}
