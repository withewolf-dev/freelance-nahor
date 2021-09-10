part of 'updatefee_bloc.dart';

@immutable
abstract class UpdatefeeEvent {}

class UpdateFees extends UpdatefeeEvent {
  final String duration;

  final String fees;

  UpdateFees({required this.duration, required this.fees});
}
