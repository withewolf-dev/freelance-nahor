part of 'google_signup_bloc.dart';

//@immutable
abstract class GoogleSignupEvent {}

class SignupUserType extends GoogleSignupEvent {
  final String type;

  SignupUserType({required this.type});
}

class Signupfreelance extends GoogleSignupEvent {
  final String type;
  final String deptname;
  final String endDate;
  final String startDate;

  Signupfreelance(
      {required this.type,
      required this.deptname,
      required this.endDate,
      required this.startDate});
}

class SignupHire extends GoogleSignupEvent {
  final String type;

  SignupHire({required this.type});
}

class LogoutEvent extends GoogleSignupEvent {}
