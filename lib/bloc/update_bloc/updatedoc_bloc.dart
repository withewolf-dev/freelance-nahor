import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'updatedoc_event.dart';
part 'updatedoc_state.dart';

class UpdatedocBloc extends Bloc<UpdatedocEvent, UpdatedocState> {
  UpdatedocBloc() : super(UpdatedocInitial());

  @override
  Stream<UpdatedocState> mapEventToState(
    UpdatedocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
