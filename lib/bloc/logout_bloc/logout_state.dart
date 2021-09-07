part of 'logout_bloc.dart';

@immutable
abstract class LogoutState {}

class LogoutInitial extends LogoutState {}

class Logoutloading extends LogoutState {
  final bool loading;

  Logoutloading({required this.loading});
}

class PushToWelcome extends LogoutState {}
