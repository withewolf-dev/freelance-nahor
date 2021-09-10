part of 'updatefee_bloc.dart';

@immutable
abstract class UpdatefeeState {}

class UpdatefeeInitial extends UpdatefeeState {}

class FeesLoading extends UpdatefeeState {
  final bool loading;

  FeesLoading({required this.loading});
}

class FeesSnackBar extends UpdatefeeState {}
