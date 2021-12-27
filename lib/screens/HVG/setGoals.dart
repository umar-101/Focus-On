import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/peer_tabs.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../constants.dart';
import '../../size_config.dart';

class SetGoalsScreen extends StatefulWidget {
  static String routeName = "/setgoalsscreen";
  const SetGoalsScreen({Key key}) : super(key: key);

  @override
  _SetGoalsScreenState createState() => _SetGoalsScreenState();
}

class _SetGoalsScreenState extends State<SetGoalsScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarSecondary(
                  title: 'Goals',
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Setting gols:',
                          style: kMediumHeading.copyWith(
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'When setting goals, try to be as specific and realistic as possible. That way you are closer to reaching that significant goal. Enjoy it! ',
                          style: kSmallHeading.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: 10),
                  child: Text(
                    'My Goals:',
                    style: kMediumHeading.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenHeight(10)),
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.12,
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle,
                            size: 35,
                            color: kGreenColor,
                          ),
                          SizedBox(width: getProportionateScreenWidth(15)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ex: I will call my mon at 6 p.m',
                                style: kSmallHeading.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Type here and press “+”...',
                                style: kSmallHeading.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFC2BABA),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: 10),
                  child: Text('Today',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenHeight(10)),
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.screenHeight * 0.12,
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        border: Border.all(width: 1, color: kBlackColor),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        children: [
                          SizedBox(width: getProportionateScreenWidth(15)),
                          Text(
                            'I will watch my son’s game at 5 p.m',
                            style: kSmallHeading.copyWith(
                                fontWeight: FontWeight.bold,
                                color: kBlackColor,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                PeerSupportTabs(
                  title: 'Values game',
                  press: () {},
                  imageUrl: 'assets/images/valuegoals.png',
                ),
                PeerSupportTabs(
                  title: ' Set your goals',
                  press: () {},
                  imageUrl: 'assets/images/goals.jpg',
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      child: CircularPercentIndicator(
                    radius: getProportionateScreenWidth(100),
                    lineWidth: getProportionateScreenWidth(10),
                    percent: 0.5,
                    center: Center(
                        child: Text('   2\nLevel', style: kLargeHeading)),
                    progressColor: Color(0xFF23FF7B),
                  )),
                ),
              ],
            ),
          ),
        ));
  }
}
