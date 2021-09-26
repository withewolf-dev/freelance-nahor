part of 'google_signin_bloc.dart';

@immutable
abstract class GoogleSigninState {}

class GoogleSigninInitial extends GoogleSigninState {}

class GoogleSignIn extends GoogleSigninState {
  final UserCredential user;
  // bool user;
  GoogleSignIn({required this.user});
}

class PushToFeed extends GoogleSigninState {
  // final String userRole;

  // PushToFeed({required this.userRole});
}

class GoogleSigninLoading extends GoogleSigninState {
  final bool loading;

  GoogleSigninLoading({required this.loading});
}

class UserType extends GoogleSigninState {
  final String type;

  UserType({required this.type});
}

class NoUserAccount extends GoogleSigninState {}

class Testing extends GoogleSigninState {
  final String type;
  Testing({required this.type});
}

class PushToHome extends GoogleSigninState {}

class IsUser extends GoogleSigninState {
  final bool isUser;

  IsUser({required this.isUser});
}
