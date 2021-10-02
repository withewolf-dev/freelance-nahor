part of 'catgeorybloc_bloc.dart';

@immutable
abstract class CategoryblocState {}

class CategoryblocInitial extends CategoryblocState {}

class Music extends CategoryblocState {
  final String category = "music";
}

class Tuition extends CategoryblocState {
  final String category = "tuition";
}

class Art extends CategoryblocState {
  final String category = "art&craft";
}

class Cooking extends CategoryblocState {
  final String category = "cooking";
}

class PgRent extends CategoryblocState {
  final String category = "pg&rent";
}

class Writing extends CategoryblocState {
  final String category = "writing";
}

class Editing extends CategoryblocState {
  final String category = "editing";
}

class Videography extends CategoryblocState {
  final String category = "videography";
}

class PhotoGraphy extends CategoryblocState {
  final String category = "photography";
}
