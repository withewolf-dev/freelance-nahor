import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'updatefee_event.dart';
part 'updatefee_state.dart';

class UpdatefeeBloc extends Bloc<UpdatefeeEvent, UpdatefeeState> {
  UpdatefeeBloc() : super(UpdatefeeInitial());

  @override
  Stream<UpdatefeeState> mapEventToState(
    UpdatefeeEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
