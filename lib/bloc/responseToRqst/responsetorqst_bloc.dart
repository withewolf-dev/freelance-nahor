import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:meta/meta.dart';

part 'responsetorqst_event.dart';
part 'responsetorqst_state.dart';

class ResponsetorqstBloc
    extends Bloc<ResponsetorqstEvent, ResponsetorqstState> {
  ResponsetorqstBloc() : super(ResponsetorqstInitial());

  @override
  Stream<ResponsetorqstState> mapEventToState(
    ResponsetorqstEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is Response) {
      yield RespLoading(loading: true);
      try {
        await responseToReqst(accepted: event.response, toId: event.toId);
        yield RespLoading(loading: false);
      } catch (e) {
        print(e);
      }
    }
  }
}
