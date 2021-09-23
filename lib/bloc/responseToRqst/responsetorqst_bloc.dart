import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kilo/bloc/request_bloc/request_bloc.dart';
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
    if (event is Response) {
      yield RespLoading(loading: true);
      try {
        await responseToReqst(
            accepted: event.response,
            toId: event.toId,
            responseId: event.responseId);
        final respDoc = await checkResponseDoc(respId: event.responseId);
        yield RespLoading(loading: false);

        //yield ResState(respId: respDoc[0], accepte: respDoc[1]);
        print("${respDoc[0]} ${respDoc[1]} resp bloc");
        // yield ResState(respId: "zyb123saU", accepte: true);
        yield ResStateChange(accept: respDoc[1], respId: respDoc[0]);
      } catch (e) {
        print(e);
      }
    }
  }
}
