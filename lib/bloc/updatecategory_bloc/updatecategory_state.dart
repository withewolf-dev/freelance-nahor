part of 'updatecategory_bloc.dart';

@immutable
abstract class UpdatecategoryState {}

class UpdatecategoryInitial extends UpdatecategoryState {}

class CategoryLoading extends UpdatecategoryState {
  final bool loading;

  CategoryLoading({required this.loading});
}

class CtgSnackBar extends UpdatecategoryState {}
