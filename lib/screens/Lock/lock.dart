// import 'package:flutter/material.dart';
// import 'package:flutter_screen_lock/functions.dart';
// import 'package:jsontoclass/screens/PayOrder/pay_order.dart';
// import 'package:jsontoclass/screens/home/home.dart';
// import 'package:local_auth/local_auth.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Future<void> localAuth(BuildContext context) async {
//     final localAuth = LocalAuthentication();
//     final didAuthenticate = await localAuth.authenticate(
//       localizedReason: 'Please authenticate',
//       biometricOnly: true,
//     );
//     if (didAuthenticate) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => PayOrderScreen()),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         child: Column(
//           children: [
//             // ElevatedButton(
//             //   onPressed: () => screenLock<void>(
//             //     context: context,
//             //     correctString: '1234',
//             //     canCancel: false,
//             //   ),
//             //   child: const Text('Not cancelable'),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
