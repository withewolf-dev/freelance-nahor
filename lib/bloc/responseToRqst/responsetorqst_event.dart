part of 'responsetorqst_bloc.dart';

@immutable
abstract class ResponsetorqstEvent {}

class Response extends ResponsetorqstEvent {
  final bool response;
  final String toId;
  final String responseId;
  Response(
      {required this.response, required this.toId, required this.responseId});
}
