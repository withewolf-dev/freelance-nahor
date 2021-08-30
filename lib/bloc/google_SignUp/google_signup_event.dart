part of 'google_signup_bloc.dart';

//@immutable
abstract class GoogleSignupEvent {}

class SignupUserType extends GoogleSignupEvent {
  final String type;

  SignupUserType({required this.type});
}

class Signupfreelance extends GoogleSignupEvent {}

class LogoutEvent extends GoogleSignupEvent {}
