import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';

import '../../constants.dart';
import '../../size_config.dart';

class AboutScreen extends StatefulWidget {
  static String routeName = "/aboutscreen";
  const AboutScreen({Key key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: singleScreenGradient,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarSecondary(
            title: 'About',
            press: () {
              Navigator.pushNamed(context, "/helplinescreen");
            },
          ),
          Padding(
            padding:
                EdgeInsets.only(left: getProportionateScreenWidth(40), top: 20),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Information about the app',
                    style: kMediumHeading.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Here we have some helplines, mental health \nservices and professionals',
                    style: kSmallHeading,
                  ),
                  Text(
                    'App goals and values:',
                    style: kLargeHeading.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
