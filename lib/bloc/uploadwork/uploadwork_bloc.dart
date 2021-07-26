import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:kilo/repository/freelance/freelancefirestore.dart';
import 'package:meta/meta.dart';

part 'uploadwork_event.dart';
part 'uploadwork_state.dart';

class UploadworkBloc extends Bloc<UploadworkEvent, UploadworkState> {
  UploadworkBloc() : super(UploadworkInitial());
  final Storage storage = Storage();

  @override
  Stream<UploadworkState> mapEventToState(
    UploadworkEvent event,
  ) async* {
    if (event is Getphoto) {
      yield UploadProgress(progress: 0);

      firebase_storage.UploadTask task = await storage.uploadFile();
      print("works till here #############333300");

      task.snapshotEvents.listen(
          (firebase_storage.TaskSnapshot snapshot) async* {
        double progress =
            (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
        yield UploadProgress(progress: progress);
        print("progress******************");
        print(snapshot.bytesTransferred / snapshot.totalBytes);

        print("progress******************");
      }, onError: (e) async* {
        if (e.code == 'permission-denied') {
          yield UploadWorkError(error: "persimmison");
        }
      });

      try {
        await task;
        yield UploadWorkSuccess();
      } on firebase_storage.FirebaseException catch (e) {
        if (e.code == 'permission-denied') {
          yield UploadWorkError(error: 'Please give permission.');
        }
      }
    }
  }
}
