import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class MoodGraph extends StatelessWidget {
  const MoodGraph({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(10)),
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.35,
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Mood check-in',
                      style: kLargeHeading.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Expanded(child: Container())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
