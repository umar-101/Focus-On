import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/assment_round_btn.dart';

import '../../constants.dart';
import '../../size_config.dart';

class AssesmentScreen extends StatefulWidget {
  static String routeName = "/assesmentscreen";
  const AssesmentScreen({Key key}) : super(key: key);

  @override
  _AssesmentScreenState createState() => _AssesmentScreenState();
}

class _AssesmentScreenState extends State<AssesmentScreen> {
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
            title: 'Assesment',
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
                    '2 0f 13',
                    style: TextStyle(fontSize: 12, color: kWhiteColor),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Difficulty focusing on everyday tasks:',
                    style: kMediumHeading.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          AssesmentOptions(
            title: 'Never',
          ),
          AssesmentOptions(
            title: 'Some of the time',
          ),
          AssesmentOptions(
            title: 'Most of the time',
          ),
          AssesmentOptions(
            title: 'Nearly all the time',
          ),
          SizedBox(height: 30),
          RoundBorderButtonAss(
            title: 'Next Question',
            press: () {
              Navigator.pushNamed(context, "/assesresultscreen");
            },
          )
        ],
      ),
    ));
  }
}

class AssesmentOptions extends StatelessWidget {
  final String title;
  const AssesmentOptions({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(40), vertical: 5),
      child: Container(
          width: SizeConfig.screenWidth,
          height: 50,
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(radius: 5),
                SizedBox(width: 15),
                Text(title, style: TextStyle(fontSize: 16))
              ],
            ),
          )),
    );
  }
}
