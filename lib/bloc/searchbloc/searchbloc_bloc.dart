import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

part 'searchbloc_event.dart';
part 'searchbloc_state.dart';

class SearchBloc extends Bloc<SearchblocEvent, SearchblocState> {
  SearchBloc() : super(SearchblocInitial());

  bool _ismultipleOfthree(num) {
    final characterCount = num;

    if (characterCount == 1 ||
        characterCount == 3 ||
        characterCount == 6 ||
        characterCount == 9) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Stream<SearchblocState> mapEventToState(
    SearchblocEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is Typing) {
      int? character = event.searchTerm.length.remainder(3);
      //print(character);
      if (character == 0) {
        yield SearchTerm(searchTerm: event.searchTerm);
      }
    }
  }
}
