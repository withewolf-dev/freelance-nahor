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

      if (event.category == "art&craft") {
        yield Art();
      }

      if (event.category == "pg&rent") {
        yield PgRent();
      }

      if (event.category == "tuition") {
        yield Tuition();
      }

      if (event.category == "writing") {
        yield Writing();
      }

      if (event.category == "writing") {
        yield Writing();
      }

      if (event.category == "editing") {
        yield Editing();
      }

      if (event.category == "videography") {
        yield Videography();
      }

      if (event.category == "photography") {
        yield PhotoGraphy();
      }
      if (event.category == "cooking") {
        yield Cooking();
      }
    }
  }
}
