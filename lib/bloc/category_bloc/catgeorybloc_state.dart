part of 'catgeorybloc_bloc.dart';

@immutable
abstract class CategoryblocState {}

class CategoryblocInitial extends CategoryblocState {}

class Music extends CategoryblocState {
  final String category = "music";
}

class Education extends CategoryblocState {
  final String category = "educational";
}

class Art extends CategoryblocState {
  final String category = "art";
}

class Webdev extends CategoryblocState {}
