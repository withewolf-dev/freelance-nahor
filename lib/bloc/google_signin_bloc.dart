import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kilo/repository/authentication.dart';
part 'google_signin_event.dart';
part 'google_signin_state.dart';

class GoogleSigninBloc extends Bloc<GoogleSigninEvent, GoogleSigninState> {
  final _authentication = Authentication();
  GoogleSigninBloc() : super(GoogleSigninInitial());

  @override
  Stream<GoogleSigninState> mapEventToState(
    GoogleSigninEvent event,
  ) async* {
    if (event is Signinasfreelance) {
      final user = await _authentication.googleLogin();
      yield GoogleSignedIn(user: user);
    }
  }
}
