import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:meta/meta.dart';

part 'uploadwork_event.dart';
part 'uploadwork_state.dart';

class UploadworkBloc extends Bloc<UploadworkEvent, UploadworkState> {
  UploadworkBloc() : super(UploadworkInitial());

  @override
  Stream<UploadworkState> mapEventToState(
    UploadworkEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is DeleteMedia) {
      yield MediaLoading(loading: true);
      try {
        await deleteMedia(imageurl: event.imageUrl);
        yield MediaLoading(loading: false);
      } catch (e) {
        print(e);
      }
    }
  }
}
