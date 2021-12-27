import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class RoundBorderButtonAss extends StatelessWidget {
  final String title;
  final Function press;
  const RoundBorderButtonAss({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(60), vertical: 10),
      child: GestureDetector(
        onTap: press,
        child: Container(
          width: SizeConfig.screenWidth,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kPrimaryColor.withOpacity(0.70),
            border: Border.all(
              width: 1,
              color: Color(0xFF69F6FF),
            ),
          ),
          child: Center(
              child: Text(
            title,
            style: kLargeHeading,
          )),
        ),
      ),
    );
  }
}
