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
    if (event is SelectedCtg) {
      if (event.category == "music") {
        yield Music();
      }

      if (event.category == "art") {
        yield Art();
      }

      if (event.category == "educational") {
        yield Education();
      }
    }
  }
}
