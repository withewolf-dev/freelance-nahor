part of 'catgeorybloc_bloc.dart';

@immutable
abstract class CategoryblocState {}

class CategoryblocInitial extends CategoryblocState {}

class Music extends CategoryblocState {
  final String state = "music";
}

class Education extends CategoryblocState {
  final String state = "education";
}

class Art extends CategoryblocState {
  final String state = "art";
}

class Webdev extends CategoryblocState {}
