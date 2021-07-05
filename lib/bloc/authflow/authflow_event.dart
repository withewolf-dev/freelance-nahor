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

class ChooseCategEvent extends AuthflowEvent {
  final String category = "asdadsada";
  // ChooseCategEvent({required this.category});
}

class HomeTownEvent extends AuthflowEvent {
  final String homeTown;
  HomeTownEvent({required this.homeTown});
}

class OnCampusEvent extends AuthflowEvent {
  final bool onCampus;
  OnCampusEvent({required this.onCampus});
}

class WriteTitleEvent extends AuthflowEvent {
  final String event;
  WriteTitleEvent({required this.event});
}

class WriteBioEvent extends AuthflowEvent {
  final String bio;
  WriteBioEvent({required this.bio});
}

class PaymentEvent extends AuthflowEvent {
  final int fees;
  final String paymentInterval;
  PaymentEvent({required this.fees, required this.paymentInterval});
}
