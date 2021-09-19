part of 'responsetorqst_bloc.dart';

@immutable
abstract class ResponsetorqstState {}

class ResponsetorqstInitial extends ResponsetorqstState {}

class RespLoading extends ResponsetorqstState {
  final bool loading;
  RespLoading({required this.loading});
}

class ResState extends ResponsetorqstState {
  final bool resState;

  ResState({required this.resState});
}
