part of 'request_bloc.dart';

@immutable
abstract class RequestState {}

class RequestInitial extends RequestState {}

class ReqLoading extends RequestState {
  final bool loading;

  ReqLoading({required this.loading});
}

class ReqSnackbar extends RequestState {}
