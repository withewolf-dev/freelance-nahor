part of 'uploadwork_bloc.dart';

@immutable
abstract class UploadworkState {}

class UploadworkInitial extends UploadworkState {}

class UploadProgress extends UploadworkState {
  final double? progress;

  UploadProgress({this.progress});
}

class UploadWorkSuccess extends UploadworkState {}

class UploadWorkError extends UploadworkState {
  final String error;

  UploadWorkError({required this.error});
}
