import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class AppBarSecondary extends StatelessWidget {
  final Function press;
  final String title;
  const AppBarSecondary({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(140),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/oval.png'),
        fit: BoxFit.fitWidth,
      )),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
        ),
        child: Row(
          children: [
            // Icon(
            //   Icons.arrow_back_ios,
            //   size: getProportionateScreenWidth(30),
            //   color: kWhiteColor,
            // ),
            IconButton(
                onPressed: press,
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kWhiteColor,
                )),
            SizedBox(width: getProportionateScreenWidth(50)),
            Text(title,
                style: kLargeHeading.copyWith(fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
