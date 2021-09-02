part of 'google_signin_bloc.dart';

@immutable
abstract class GoogleSigninState {}

class GoogleSigninInitial extends GoogleSigninState {}

class GoogleSignIn extends GoogleSigninState {
  final UserCredential user;
  // bool user;
  GoogleSignIn({required this.user});
}

class PushToFeed extends GoogleSigninState {}

class GoogleSigninLoading extends GoogleSigninState {
  final bool loading;

  GoogleSigninLoading({required this.loading});
}

class NoUserAccount extends GoogleSigninState {}
