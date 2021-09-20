part of 'uploadwork_bloc.dart';

@immutable
abstract class UploadworkEvent {}

class DeleteMedia extends UploadworkEvent {
  final String imageUrl;

  DeleteMedia({required this.imageUrl});
}
