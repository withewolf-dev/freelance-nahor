import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'updatecategory_event.dart';
part 'updatecategory_state.dart';

class UpdatecategoryBloc extends Bloc<UpdatecategoryEvent, UpdatecategoryState> {
  UpdatecategoryBloc() : super(UpdatecategoryInitial());

  @override
  Stream<UpdatecategoryState> mapEventToState(
    UpdatecategoryEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
