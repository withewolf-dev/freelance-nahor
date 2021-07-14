part of 'phoneverify_bloc.dart';

@immutable
abstract class PhoneverifyEvent {}

class OnVerifyNumber extends PhoneverifyEvent {
  final String verficationcode;
  OnVerifyNumber({required this.verficationcode});
}

class OnNumberVerified extends PhoneverifyEvent {}
