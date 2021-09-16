import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:meta/meta.dart';

part 'updateprice_event.dart';
part 'updateprice_state.dart';

class UpdatepriceBloc extends Bloc<UpdatepriceEvent, UpdatepriceState> {
  UpdatepriceBloc() : super(UpdatepriceInitial());

  @override
  Stream<UpdatepriceState> mapEventToState(
    UpdatepriceEvent event,
  ) async* {
    // TODO: implement mapEventToState

    if (event is UpdatePrice) {
      yield UpdatePriceLoading(loading: true);
      try {
        await updatePrice(event.price);

        yield UpdatePriceLoading(loading: false);

        yield UpdateSnackbarPrice();
      } catch (e) {
        print(e);
      }
    }
  }
}
