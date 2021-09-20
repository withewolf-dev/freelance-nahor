part of 'uploadwork_bloc.dart';

@immutable
abstract class UploadworkState {}

class UploadworkInitial extends UploadworkState {}

class MediaLoading extends UploadworkState {
  final bool loading;

  MediaLoading({required this.loading});
}
