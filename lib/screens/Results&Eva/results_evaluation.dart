import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/bottomNavBar.dart';
import 'package:jsontoclass/screens/Results&Eva/assesmentTab.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'achievementTab.dart';
import 'moodTab_content.dart';

int _selectedIndex = 0;

class ResultEvaluationScreen extends StatefulWidget {
  static String routeName = "/resultevaluationscreen";

  const ResultEvaluationScreen({Key key}) : super(key: key);

  @override
  _ResultEvaluationScreenState createState() => _ResultEvaluationScreenState();
}

class _ResultEvaluationScreenState extends State<ResultEvaluationScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: bgGradient,
          ),
          child: Column(
            children: [
              AppBarSecondary(
                title: 'Outcome',
                press: () {
                  Navigator.pushNamed(context, "/assesmentscreen");
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
                child: Row(
                  children: [
                    Container(
                      width: SizeConfig.screenWidth * 0.60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your results,\n Andrew!',
                            style: kMediumHeading.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Here you can track your mood and situation assessment results, as well as psychological assessments and the level of your goals, mindfulness and psychoeducation!',
                            style: kSmallHeading.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  ResultEvaTabs(
                      title: 'Mood Check-In',
                      press: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      }),
                  ResultEvaTabs(
                      title: 'Assessment',
                      press: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      }),
                  ResultEvaTabs(
                      title: ' Achievements',
                      press: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      }),
                ],
              ),
              _selectedIndex == 0 ? MoodContentTab() : Container(),
              _selectedIndex == 1 ? AssContentTab() : Container(),
              _selectedIndex == 2 ? AchieveContentTab() : Container(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class ResultEvaTabs extends StatelessWidget {
  final String title;
  final Function press;
  const ResultEvaTabs({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor.withOpacity(0.7),
              border: Border.all(width: 1, color: Color(0xFF69F6FF))),
          height: 45,
          child: Center(
              child: Text(title,
                  style: kSmallHeading.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 14))),
        ),
      ),
    );
  }
}
