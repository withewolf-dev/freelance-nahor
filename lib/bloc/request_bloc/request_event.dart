part of 'request_bloc.dart';

@immutable
abstract class RequestEvent {}

class SendRequest extends RequestEvent {
  final String phonenum;
  final String address;
  final String descp;

  SendRequest({
    required this.address,
    required this.descp,
    required this.phonenum,
  });
}
