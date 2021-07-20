import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'catgeorybloc_event.dart';
part 'catgeorybloc_state.dart';

class CatgeoryblocBloc extends Bloc<CatgeoryblocEvent, CatgeoryblocState> {
  CatgeoryblocBloc() : super(CatgeoryblocInitial());

  @override
  Stream<CatgeoryblocState> mapEventToState(
    CatgeoryblocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
