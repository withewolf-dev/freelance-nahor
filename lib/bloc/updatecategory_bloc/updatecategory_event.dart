part of 'updatecategory_bloc.dart';

@immutable
abstract class UpdatecategoryEvent {}

class UpdateCatg extends UpdatecategoryEvent {
  final String categoryName;
  final int idx;

  UpdateCatg({required this.categoryName, required this.idx});
}
