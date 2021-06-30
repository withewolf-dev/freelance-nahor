import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'testing_event.dart';
part 'testing_state.dart';

class TestingBloc extends Bloc<TestingEvent, TestingState> {
  TestingBloc() : super(TestingInitial());

  @override
  Stream<TestingState> mapEventToState(
    TestingEvent event,
  ) async* {
    print(event);
    if (event is ButtonClick) {
      yield TestingNext(text: "text");
    }
  }
}
