import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:meta/meta.dart';

part 'bio_event.dart';
part 'bio_state.dart';

class BioBloc extends Bloc<BioEvent, BioState> {
  BioBloc() : super(BioInitial());

  @override
  Stream<BioState> mapEventToState(
    BioEvent event,
  ) async* {
    if (event is UpdateBio) {
      yield Loading(loading: true);
      try {
        await updateBio(event.bio, event.bioTitle);

        yield Loading(loading: false);

        yield UpdateSnackbar();
      } catch (e) {
        print(e);
      }
    }
  }
}
