import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'responsetorqst_event.dart';
part 'responsetorqst_state.dart';

class ResponsetorqstBloc extends Bloc<ResponsetorqstEvent, ResponsetorqstState> {
  ResponsetorqstBloc() : super(ResponsetorqstInitial());

  @override
  Stream<ResponsetorqstState> mapEventToState(
    ResponsetorqstEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
