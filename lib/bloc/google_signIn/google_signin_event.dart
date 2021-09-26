part of 'google_signin_bloc.dart';

@immutable
abstract class GoogleSigninEvent {}

class OnGoogleSignIn extends GoogleSigninEvent {}

class OnGoogleSignOut extends GoogleSigninEvent {}
