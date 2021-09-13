part of 'request_bloc.dart';

@immutable
abstract class RequestEvent {}

class SendRequest extends RequestEvent {
  final String phonenum;
  final String city;
  final String descp;

  SendRequest(
      {required this.city, required this.descp, required this.phonenum});
}
