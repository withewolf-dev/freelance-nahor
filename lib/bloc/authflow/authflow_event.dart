part of 'authflow_bloc.dart';

@immutable
abstract class AuthflowEvent {}

class CancelRegistration extends AuthflowEvent {}

class RegistrationDone extends AuthflowEvent {}

class ChooseDeptEvent extends AuthflowEvent {
  final String dept;
  ChooseDeptEvent({required this.dept});
}

class SessionEvent extends AuthflowEvent {
  final String session = "asdasd";
}

class ChooseCategEvent extends AuthflowEvent {
  final String category;
  ChooseCategEvent({required this.category});
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
