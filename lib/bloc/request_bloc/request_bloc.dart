import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:meta/meta.dart';

part 'request_event.dart';
part 'request_state.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  RequestBloc() : super(RequestInitial());

  @override
  Stream<RequestState> mapEventToState(
    RequestEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is SendRequest) {
      yield ReqLoading(loading: true);

      try {
        await sendReqst(
          event.phonenum,
          event.descp,
          event.address,
        );
        yield ReqLoading(loading: false);
        yield ReqSnackbar();
      } catch (e) {
        print(e);
      }
    }
  }
}