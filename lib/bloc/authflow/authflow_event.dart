part of 'authflow_bloc.dart';

@immutable
abstract class AuthflowEvent {}

class CancelRegistration extends AuthflowEvent {}

class RegistrationDone extends AuthflowEvent {}

class StepOneEvent extends AuthflowEvent {
  final String session;
  final String dept;

  StepOneEvent({required this.dept, required this.session});
}

class StepTwoEvent extends AuthflowEvent {
  final String hometown;
  final String campus;

  StepTwoEvent({required this.campus, required this.hometown});
}

class StepThreeEvent extends AuthflowEvent {
  final String biotitle;
  final String bio;
  final String payment;

  StepThreeEvent(
      {required this.bio, required this.biotitle, required this.payment});
}

class StepfourEvent extends AuthflowEvent {
  final String category;
  StepfourEvent({required this.category});
}
