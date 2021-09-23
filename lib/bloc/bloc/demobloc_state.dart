part of 'demobloc_bloc.dart';

@immutable
abstract class DemoblocState {}

class DemoblocInitial extends DemoblocState {}

class DemoTrigger extends DemoblocState {}

class DemoLoading extends DemoblocBloc {
  final bool loading;
  DemoLoading({required this.loading});
}

class DemoState extends DemoblocBloc {
  final String respId;
  final bool accepte;
  DemoState({required this.respId, required this.accepte});
}
