part of 'bio_bloc.dart';

@immutable
abstract class BioState {}

class BioInitial extends BioState {}

class Loading extends BioState {
  final bool loading;

  Loading({required this.loading});
}

class UpdateSnackbar extends BioState {}
