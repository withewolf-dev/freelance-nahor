part of 'responsetorqst_bloc.dart';

@immutable
abstract class ResponsetorqstState {}

class ResponsetorqstInitial extends ResponsetorqstState {}

class RespLoading extends ResponsetorqstState {
  final bool loading;
  RespLoading({required this.loading});
}

class ResState extends ResponsetorqstState {
  final String respId;
  final bool accepte;
  ResState({required this.respId, required this.accepte});
}

class ResStateChange extends ResponsetorqstState {
  final String respId;
  final bool accept;
  ResStateChange({required this.accept, required this.respId});
}
