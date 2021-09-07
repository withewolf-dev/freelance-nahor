import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:kilo/repository/authentication.dart';
import 'package:meta/meta.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(LogoutInitial());

  final _auth = Authentication();

  @override
  Stream<LogoutState> mapEventToState(
    LogoutEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is Logout) {
      yield Logoutloading(loading: true);

      try {
        await _auth.logout();
        yield PushToWelcome();
        yield Logoutloading(loading: false);
      } catch (e) {
        print(e);
      }
    }
  }
}
