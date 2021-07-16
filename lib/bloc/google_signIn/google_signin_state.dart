part of 'google_signin_bloc.dart';

@immutable
abstract class GoogleSigninState {}

class GoogleSigninInitial extends GoogleSigninState {}

class GoogleSignIn extends GoogleSigninState {
  final UserCredential user;
  // bool user;
  GoogleSignIn({required this.user});
}

class GoogleSigninLoading extends GoogleSigninState {}

class NoUserAccount extends GoogleSigninState {}
