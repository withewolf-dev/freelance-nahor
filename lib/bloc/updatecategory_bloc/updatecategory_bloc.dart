import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:meta/meta.dart';

part 'updatecategory_event.dart';
part 'updatecategory_state.dart';

class UpdatecategoryBloc
    extends Bloc<UpdatecategoryEvent, UpdatecategoryState> {
  UpdatecategoryBloc() : super(UpdatecategoryInitial());

  @override
  Stream<UpdatecategoryState> mapEventToState(
    UpdatecategoryEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is UpdateCatg) {
      yield CategoryLoading(loading: true);

      try {
        await updateCategory(event.idx, event.categoryName);
        yield CategoryLoading(loading: false);
        yield CtgSnackBar();
      } catch (e) {
        print(e);
      }
    }
  }
}
