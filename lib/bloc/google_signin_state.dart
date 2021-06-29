part of 'google_signin_bloc.dart';

abstract class GoogleSigninState {}

class GoogleSigninInitial extends GoogleSigninState {}

class GoogleSigninFail extends GoogleSigninState {}

class GoogleSigninSuccess extends GoogleSigninState {}
