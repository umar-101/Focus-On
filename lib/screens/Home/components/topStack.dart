import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'moodGraph.dart';

class TopStack extends StatelessWidget {
  const TopStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: SizeConfig.screenHeight * 0.64,
        child: Container(
          width: double.infinity,
          height: 270,
          child: Image(
            image: AssetImage('assets/images/elispe.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
        left: getProportionateScreenWidth(30),
        top: getProportionateScreenHeight(70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome,Andrew',
              style: kMediumHeading.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'Take care of your mental and \nemotional health. O Psicopydia app\nwill be or will be alid',
              style: kSmallHeading.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
      Positioned(
        top: getProportionateScreenHeight(200),
        left: 5,
        right: 5,
        child: MoodGraph(),
      )
    ]);
  }
}
