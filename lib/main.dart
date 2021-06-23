import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kilo/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

// class MyApp extends StatefulWidget {
//   // Create the initialization Future outside of `build`:
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   /// The future is part of the state of our widget. We should not call `initializeApp`
//   /// directly inside [build].
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return SomethingWentWrong(
//             error: snapshot.hasError.toString(),
//           );
//         }

//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return App();
//         }

//         // Otherwise, show something whilst waiting for initialization to complete
//         return Loading();
//       },
//     );
//   }
// }

// class SomethingWentWrong extends StatelessWidget {
//   const SomethingWentWrong({Key? key, required this.error}) : super(key: key);
//   final String error;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       child: Text(
//         "SomethingWentWrong",
//         textDirection: TextDirection.ltr,
//       ),
//     );
//   }
// }

// class Loading extends StatelessWidget {
//   const Loading({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       child: Text(
//         "loading",
//         textDirection: TextDirection.ltr,
//       ),
//     );
//   }
// }
