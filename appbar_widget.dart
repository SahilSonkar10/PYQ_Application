import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'app_sign_in.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 50, 19, 84),
      elevation: 0.0,
      // centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 30.0,
          wordSpacing: 2.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AppSignIn()),
            );
          },
          icon: const Icon(FontAwesomeIcons.user),
          color: Color.fromARGB(255, 102, 169, 228),
        ),
      ],
    );
  }
}

// Widget appBarWidget(context) {
//   return AppBar(
//     backgroundColor: const Color(0xFF5D9C59),
//     elevation: 0.0,
//     centerTitle: true,
//     title: const Text('PYQ',style: TextStyle(
//       fontSize: 30.0,
//       wordSpacing: 2.0,
//       color: Colors.white,
//       fontWeight: FontWeight.bold,
//
//     ),),
//     actions: <Widget>[
//       IconButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => const AppSignIn()),
//           );
//         },
//         icon: const Icon(FontAwesomeIcons.user),
//         color: const Color(0xFF323112),
//       ),
//     ],
//   );
// }
