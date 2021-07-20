import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'catgeorybloc_event.dart';
part 'catgeorybloc_state.dart';

class CategoryBloc extends Bloc<CategoryblocEvent, CategoryblocState> {
  CategoryBloc() : super(CategoryblocInitial());

  @override
  Stream<CategoryblocState> mapEventToState(
    CategoryblocEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is MusicCatgEvnt) {
      yield Music();
    }
    if (event is ArtCatgEvnt) {
      yield Art();
    }

    if (event is EduCatgEvnt) {
      yield Education();
    }
  }
}
