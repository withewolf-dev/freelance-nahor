part of 'updateprice_bloc.dart';

@immutable
abstract class UpdatepriceEvent {}

class UpdatePrice extends UpdatepriceEvent {
  final String price;

  UpdatePrice({required this.price});
}
