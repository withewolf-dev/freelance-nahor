part of 'demobloc_bloc.dart';

@immutable
abstract class DemoblocEvent {}

class Trigger extends DemoblocEvent {}

// class Response extends DemoblocEvent {
//   final bool response;
//   final String toId;
//   final String responseId;
//   Response(
//       {required this.response, required this.toId, required this.responseId});
// }
