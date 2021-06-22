import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationState { home, first, second }

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.home);

  void firstPage() => emit(NavigationState.first);

  void secondPage(String text) => emit(NavigationState.second);

  //void popto() => emit();
}
