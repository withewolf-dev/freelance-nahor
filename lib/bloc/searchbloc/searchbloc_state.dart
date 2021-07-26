part of 'searchbloc_bloc.dart';

@immutable
abstract class SearchblocState {}

class SearchblocInitial extends SearchblocState {}

class SearchTerm extends SearchblocState {
  final String searchTerm;

  SearchTerm({required this.searchTerm});
}
