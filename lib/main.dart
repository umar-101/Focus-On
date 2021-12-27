import 'package:flutter/material.dart';
import 'package:jsontoclass/routes.dart';

import 'package:jsontoclass/screens/Chat/chat.dart';
import 'package:jsontoclass/screens/Home/home.dart';
import 'package:jsontoclass/screens/Login/login.dart';
import 'package:jsontoclass/screens/Login/privacy_policy.dart';

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
      routes: routes,
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
      home: PrivacyPolicy(),
    );
  }
}
