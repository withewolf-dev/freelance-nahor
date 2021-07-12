part of 'authflow_bloc.dart';

@immutable
abstract class AuthflowState {}

class AuthflowInitial extends AuthflowState {}

// ignore: must_be_immutable
class CreateFreelanceUser extends AuthflowState {
  static final CreateFreelanceUser _singleton =
      CreateFreelanceUser._initializerFunction();

  String? _session;
  String? _category;
  String? _dept;
  String? _hometown;
  String? _campus;
  String? _bio;
  String? _biotitle;
  String? _payment;

  String get session => _session!;

  void setSession(newvalue) {
    _session = newvalue;
  }

  String get category => _category!;

  void setCategory(newvalue) {
    _category = newvalue;
  }

  String get dept => _dept!;

  void setDept(newvalue) {
    _dept = newvalue;
  }

  String get hometown => _hometown!;

  void setHometown(newvalue) {
    _hometown = newvalue;
  }

  String get campus => _campus!;

  void setCampus(newvalue) {
    _campus = newvalue;
  }

  String get bio => _bio!;

  void setBio(newvalue) {
    _bio = newvalue;
  }

  String get bioTitle => _biotitle!;

  void setBioTitle(newvalue) {
    _biotitle = newvalue;
  }

  String get payment => _payment!;

  void setPayment(newvalue) {
    _payment = newvalue;
  }

  factory CreateFreelanceUser() {
    return _singleton;
  }

  CreateFreelanceUser._initializerFunction() {
    print("singleton initializer");
  }
}

class StepOneDone extends AuthflowState {}

class StepTwoDone extends AuthflowState {}

class StepThreeDone extends AuthflowState {}

class SelectCatgDone extends AuthflowState {}
