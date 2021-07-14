part of 'phoneverify_bloc.dart';

@immutable
abstract class PhoneverifyState {}

class PhoneverifyInitial extends PhoneverifyState {}

class VerificationState extends PhoneverifyState {
  final String code;
  VerificationState({required this.code});
}

class NumberVerified extends PhoneverifyState {}
