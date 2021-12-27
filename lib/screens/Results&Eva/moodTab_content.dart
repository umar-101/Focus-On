import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class MoodContentTab extends StatelessWidget {
  const MoodContentTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.screenWidth,
        child: Column(children: [
          Text('My mood check-in:', style: kLargeHeading),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 0.25,
              decoration: BoxDecoration(
                color: Color(0xFF07EFB7),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kBlackColor.withOpacity(0.30),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1,
                          color: Color(0xFF69F6FF).withOpacity(0.56))),
                  child: Center(
                      child: Text('  2\nNov',
                          style: kSmallHeading.copyWith(
                              fontWeight: FontWeight.bold))),
                ),
                SizedBox(width: 10),
                Text('Saturday',
                    style: kMediumHeading.copyWith(fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(50)),
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 0.22,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.7),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image(
                        image: AssetImage('assets/icons/emlaugh.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text('Not so good',
                        style: kLargeHeading.copyWith(
                            fontWeight: FontWeight.bold)),
                    Column(
                      children: [
                        Image(
                            image: AssetImage('assets/icons/home.png'),
                            width: 50,
                            height: 50),
                        Text(
                          'JOB',
                          style: kSmallHeading,
                        )
                      ],
                    ),
                    Icon(Icons.share, color: kWhiteColor)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(50)),
                  child: Row(
                    children: [
                      Text(
                        '10:35 p.m',
                        style: kSmallHeading,
                      ),
                      Spacer(),
                      Text('Sad; Exhausted',
                          style: kLargeHeading.copyWith(fontSize: 24))
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15)),
                  child: Row(
                    children: [
                      Text(
                        'What is happening?',
                        style: kSmallHeading,
                      ),
                      Spacer(),
                      Text('What can you do?', style: kSmallHeading)
                    ],
                  ),
                ),
              ]),
            ),
          )
        ]));
  }
}
