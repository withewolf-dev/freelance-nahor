import 'package:bloc/bloc.dart';
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:meta/meta.dart';

part 'demobloc_event.dart';
part 'demobloc_state.dart';

class DemoblocBloc extends Bloc<DemoblocEvent, DemoblocState> {
  DemoblocBloc() : super(DemoblocInitial());

  @override
  Stream<DemoblocState> mapEventToState(
    DemoblocEvent event,
  ) async* {}
}
