import 'package:flutter/material.dart';

// class ProfileSheet extends StatelessWidget {
//   const ProfileSheet({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SafeArea(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             child: const Text('showModalBottomSheet'),
//             onPressed: () {
//               showModalBottomSheet<void>(
//                   isScrollControlled: true,
//                   backgroundColor: Colors.transparent,
//                   shape: RoundedRectangleBorder(
//                       borderRadius:
//                           BorderRadius.vertical(top: Radius.circular(20))),
//                   context: context,
//                   builder: (BuildContext context) => Sheet(
//                         context: context,
//                       ));
//             },
//           ),
//         ],
//       )),
//     );
//   }
// }

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({Key? key, required this.context}) : super(key: key);

  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return makedismissiable(
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.6,
        builder: (_, controller) => Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          padding: EdgeInsets.all(16),
          child: ListView(
            controller: controller,
            children: <Widget>[
              Text(
                  "BottomSheet, which becomes the parent of the w.BottomSheet, which becomes the parent of the w.BottomSheet, which becomes the parent of the w.BottomSheet, which becomes the parent of the w.BottomSheet, which becomes the parent of the w."),
              Text(
                  "BottomSheet, which becomes the parent of the w.BottomSheet, which becomes the parent of the w.BottomSheet, which becomes the parent of the w.BottomSheet, which becomes the parent of the w.BottomSheet, which becomes the parent of the w."),
            ],
          ),
        ),
      ),
    );
  }

  Widget makedismissiable({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );
}
