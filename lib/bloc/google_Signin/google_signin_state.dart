part of 'google_signin_bloc.dart';

abstract class GoogleSigninState {}

class GoogleSigninInitial extends GoogleSigninState {}

class GoogleSigninFail extends GoogleSigninState {}

class GoogleSignedIn extends GoogleSigninState {
  final UserCredential user;
  GoogleSignedIn({required this.user});
}

class LogoutState extends GoogleSigninState {}
