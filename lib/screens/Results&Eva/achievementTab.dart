import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../constants.dart';
import '../../size_config.dart';

class AchieveContentTab extends StatelessWidget {
  const AchieveContentTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.screenWidth,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('My achievements:', style: kLargeHeading),
          Padding(
            padding: const EdgeInsets.only(
                top: 20, left: 20, right: 20, bottom: 140),
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 0.30,
              decoration: BoxDecoration(
                color: Color(0xFFEFAE07),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Psychoeducation',
                            style: kMediumHeading.copyWith(
                                fontWeight: FontWeight.bold)),
                        Text(' Level 2', style: kMediumHeading),
                        SizedBox(width: 15),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kWhiteColor,
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                        child: CircularPercentIndicator(
                      radius: getProportionateScreenWidth(120),
                      lineWidth: getProportionateScreenWidth(15),
                      percent: 0.5,
                      center: Center(
                          child: Text('   2\nLevel', style: kLargeHeading)),
                      progressColor: Color(0xFF23FF7B),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
