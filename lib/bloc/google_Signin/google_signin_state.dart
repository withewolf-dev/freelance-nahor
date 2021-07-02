part of 'google_signin_bloc.dart';

abstract class GoogleSigninState {}

class GoogleSigninInitial extends GoogleSigninState {}

class GoogleSigninFail extends GoogleSigninState {
  final String e;
  GoogleSigninFail({required this.e});
}

class GoogleSignedIn extends GoogleSigninState {
  final UserCredential user;
  GoogleSignedIn({required this.user});
}

class LogoutState extends GoogleSigninState {}

class SigninLoading extends GoogleSigninState {
  final bool loadingState;
  SigninLoading({required this.loadingState});
}
