import 'package:flutter/widgets.dart';
import 'package:jsontoclass/screens/home/home.dart';

import 'screens/Login/login.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
