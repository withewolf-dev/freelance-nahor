part of 'testing_bloc.dart';

@immutable
abstract class TestingState {}

class TestingInitial extends TestingState {}

class TestingNext extends TestingState {
  final String text;

  TestingNext({required this.text});
}
