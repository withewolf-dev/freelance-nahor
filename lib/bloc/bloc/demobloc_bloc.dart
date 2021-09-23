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
  ) async* {
    // if (event is Response) {
    //   yield DemoLoading(loading: true);
    //   try {
    //     await responseToReqst(
    //         accepted: event.response,
    //         toId: event.toId,
    //         responseId: event.responseId);
    //     final respDoc = await checkResponseDoc(respId: event.responseId);

    //     //yield ResState(respId: respDoc[0], accepte: respDoc[1]);
    //     yield ResState(respId: "zyb123saU", accepte: true);
    //     yield ResStateChange();
    //     yield RespLoading(loading: false);
    //   } catch (e) {
    //     print(e);
    //   }
    // }
  }
}
