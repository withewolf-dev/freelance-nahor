part of 'updateprice_bloc.dart';

@immutable
abstract class UpdatepriceState {}

class UpdatepriceInitial extends UpdatepriceState {}

class UpdateSnackbarPrice extends UpdatepriceState {}

class UpdatePriceLoading extends UpdatepriceState {
  final bool loading;

  UpdatePriceLoading({required this.loading});
}
