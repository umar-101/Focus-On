import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../constants.dart';
import '../../size_config.dart';

const String para1 =
    "Your results indicate that you may be experiencing symptoms of moderate depression. Based on your answers, living with these ymptoms could be causing difficulty managing relationships and even the tasks of everyday life. ";
const String para2 =
    "This assessment don’t provide a diagnostic, it’s just a picture of the time. You can look for mental health services and professionals to help you in this situation.";
const String para3 =
    "You can use this app to make some goals, learn about mental health and make some mindful exercise, even this all don´t substitute the professionals. Take care! ";

class AssesResultScreen extends StatefulWidget {
  static String routeName = "/assesresultscreen";
  const AssesResultScreen({Key key}) : super(key: key);

  @override
  _AssesResultScreenState createState() => _AssesResultScreenState();
}

class _AssesResultScreenState extends State<AssesResultScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: darkScreenGradient,
        ),
        child: Column(
          children: [
            AppBarSecondary(
                title: 'Assessment Results',
                press: () {
                  Navigator.pushNamed(context, "/cautionscreen");
                }),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40), vertical: 10),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.close, size: 30, color: kWhiteColor)),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Moderated Risk',
                        style:
                            kLargeHeading.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: getProportionateScreenWidth(80)),
                      Icon(Icons.share, size: 30, color: kWhiteColor),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                      child: CircularPercentIndicator(
                    radius: getProportionateScreenWidth(100),
                    lineWidth: getProportionateScreenWidth(12),
                    percent: 0.5,
                    center: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('18',
                            style: kLargeHeading.copyWith(
                                fontWeight: FontWeight.bold)),
                        Text('out of 39',
                            style: kSmallHeading.copyWith(fontSize: 12)),
                      ],
                    )),
                    progressColor: Color(0xFF23FF7B),
                  )),
                  SizedBox(height: 25),
                  Text(
                    para1,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kWhiteColor),
                  ),
                  SizedBox(height: 15),
                  Text(
                    para2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kWhiteColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    para3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kWhiteColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
