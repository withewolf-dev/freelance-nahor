part of 'catgeorybloc_bloc.dart';

@immutable
abstract class CategoryblocEvent {}

class SelectedCtg extends CategoryblocEvent {
  final String category;

  SelectedCtg({required this.category});
}
