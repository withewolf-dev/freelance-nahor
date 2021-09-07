import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
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
    // TODO: implement mapEventToState

    if (event is UpdateBio) {
      yield Loading(loading: true);
      try {
        // check if the field exist
        await updateBio(event.bio, event.bioTitle);

        yield Loading(loading: false);

        yield UpdateSnackbar();
        //if no

        // add

        // if yes

        // update

      } catch (e) {
        print(e);
      }
    }
  }
}
