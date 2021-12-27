import 'package:flutter/material.dart';
import 'package:jsontoclass/components/assment_round_btn.dart';

import '../../constants.dart';
import '../../size_config.dart';

class AssContentTab extends StatelessWidget {
  const AssContentTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      child: Column(children: [
        Text('My assessment:', style: kLargeHeading),
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
        RoundBorderButtonAss(
          title: 'Make an assessment',
          press: () {},
        ),
        SizedBox(height: 150),
      ]),
    );
  }
}
