import 'package:flutter/material.dart';
import 'package:jsontoclass/constants.dart';
import 'package:jsontoclass/size_config.dart';

import 'components/customFeelCont.dart';
import 'components/feelingsContainer.dart';
import 'components/locationContainer.dart';
import 'components/topStackCont.dart';

const List = [];

class MoodTrack extends StatelessWidget {
  static String routeName = '/moodTrack';
  const MoodTrack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopStackContainer(),
              FeelingsContainer(),
              LocationContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'If you have time, please be more specific clicking here ',
                    style: TextStyle(fontSize: 14),
                  ),
                  Icon(
                    Icons.add_circle,
                    color: kGreenColor,
                  ),
                ],
              ),
              Column(
                children: [
                  CustomFeelingContainer(
                    title: 'What is happening? ',
                    body: 'Example: “I struggled with my wife...',
                  ),
                  CustomFeelingContainer(
                      title: 'What would be the best thing to do for now? ',
                      body: 'Example: “I will have a lunch...”'),
                ],
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/homeScreen");
                },
                child: Container(
                  width: getProportionateScreenWidth(200),
                  height: 45,
                  decoration: BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Done',
                      style: kMediumHeading,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ));
  }
}
