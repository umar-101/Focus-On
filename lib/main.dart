import 'package:flutter/material.dart';
import 'package:jsontoclass/screens/Receipt/receipt_screen.dart';
import 'package:jsontoclass/screens/payment/payment.dart';
import 'package:jsontoclass/screens/splash/splash.dart';

import 'screens/Lock/lock.dart';
import 'screens/home/home.dart';
import 'screens/paymentProcess/payment_process.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus On',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          primarySwatch: Colors.blue,
          fontFamily: 'Open Sans',
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Color(0xFF797A7A),
              ))),
      home: SplashScreen(),
    );
  }
}
