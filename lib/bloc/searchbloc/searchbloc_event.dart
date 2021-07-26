part of 'searchbloc_bloc.dart';

@immutable
abstract class SearchblocEvent {}

class Typing extends SearchblocEvent {
  final String searchTerm;

  Typing({required this.searchTerm});
}
