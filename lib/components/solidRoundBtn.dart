import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SolidRoundButton extends StatelessWidget {
  final String title;
  final Function press;

  const SolidRoundButton({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: getProportionateScreenWidth(140),
        height: 45,
        decoration: BoxDecoration(
          color: kGreenColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: kMediumHeading,
          ),
        ),
      ),
    );
  }
}
