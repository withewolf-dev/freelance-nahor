import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

part 'phoneverify_event.dart';
part 'phoneverify_state.dart';

class PhoneverifyBloc extends Bloc<PhoneverifyEvent, PhoneverifyState> {
  PhoneverifyBloc() : super(PhoneverifyInitial());

  @override
  Stream<PhoneverifyState> mapEventToState(
    PhoneverifyEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is OnVerifyNumber) {
      yield VerificationState(code: event.verficationcode);
    }
    if (event is OnNumberVerified) {
      yield NumberVerified();
    }
  }
}
