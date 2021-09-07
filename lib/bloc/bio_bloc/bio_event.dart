part of 'bio_bloc.dart';

@immutable
abstract class BioEvent {}

class UpdateBio extends BioEvent {
  final String bio;
  final String bioTitle;

  UpdateBio({required this.bio, required this.bioTitle});
}
