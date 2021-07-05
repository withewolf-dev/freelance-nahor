part of 'authflow_bloc.dart';

@immutable
abstract class AuthflowState {}

class AuthflowInitial extends AuthflowState {}

class CreateFreelanceUser extends AuthflowState {
  final String? session;
  final String? category;
  final String? dept;
  final String? hometown;
  final String? campus;

  CreateFreelanceUser(
      {this.category, this.session, this.dept, this.campus, this.hometown});
}

class StepOneDone extends AuthflowState {}

class StepTwoDone extends AuthflowState {}
