import 'package:flutter/widgets.dart';
import 'package:jsontoclass/screens/About/about.dart';
import 'package:jsontoclass/screens/Assesment/assesment.dart';
import 'package:jsontoclass/screens/Assesment/assesmentResults.dart';
import 'package:jsontoclass/screens/Assesment/caution.dart';
import 'package:jsontoclass/screens/Chat/chat.dart';
import 'package:jsontoclass/screens/HVG/choose_values.dart';
import 'package:jsontoclass/screens/HVG/health_value.dart';
import 'package:jsontoclass/screens/HVG/setGoals.dart';
import 'package:jsontoclass/screens/Helpline/helpline.dart';
import 'package:jsontoclass/screens/Home/home.dart';
import 'package:jsontoclass/screens/Login/privacy_policy.dart';
import 'package:jsontoclass/screens/Mindfulness/mindfulness.dart';
import 'package:jsontoclass/screens/PeerSupport/peergrp_rules.dart';
import 'package:jsontoclass/screens/PeerSupport/peergrp_tips.dart';
import 'package:jsontoclass/screens/PeerSupport/peername.dart';
import 'package:jsontoclass/screens/PeerSupport/peersupport.dart';
import 'package:jsontoclass/screens/PsychoEdu/MiniScreen/depBlog/depBlog.dart';
import 'package:jsontoclass/screens/PsychoEdu/MiniScreen/depChart/depresChart.dart';
import 'package:jsontoclass/screens/PsychoEdu/psychoedu.dart';
import 'package:jsontoclass/screens/Results&Eva/results_evaluation.dart';

import 'screens/Login/login.dart';
import 'screens/MoodTrack/moodTrack.dart';
import 'screens/Register/register.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  RegisterScreen.routeName: (context) => RegisterScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  PrivacyPolicy.routeName: (context) => PrivacyPolicy(),
  MoodTrack.routeName: (context) => MoodTrack(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MindfulnesScreen.routeName: (context) => MindfulnesScreen(),
  PsychoEduScreen.routeName: (context) => PsychoEduScreen(),
  DepChartScreen.routeName: (context) => DepChartScreen(),
  DepBlogScreen.routeName: (context) => DepBlogScreen(),
  PeerSupportScreen.routeName: (context) => PeerSupportScreen(),
  PeerGrpRuleScreen.routeName: (context) => PeerGrpRuleScreen(),
  PeerGrpTipScreen.routeName: (context) => PeerGrpTipScreen(),
  PeerNameScreen.routeName: (context) => PeerNameScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  HealthValueScreen.routeName: (context) => HealthValueScreen(),
  SetGoalsScreen.routeName: (context) => SetGoalsScreen(),
  ChooseValueScreen.routeName: (context) => ChooseValueScreen(),
  ResultEvaluationScreen.routeName: (context) => ResultEvaluationScreen(),
  AssesmentScreen.routeName: (context) => AssesmentScreen(),
  CautionScreen.routeName: (context) => CautionScreen(),
  HelplineScreen.routeName: (context) => HelplineScreen(),
  AboutScreen.routeName: (context) => AboutScreen(),
  AssesResultScreen.routeName: (context) => AssesResultScreen(),
};
