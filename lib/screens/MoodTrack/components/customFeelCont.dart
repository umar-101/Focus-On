import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CustomFeelingContainer extends StatelessWidget {
  final String title, body;
  const CustomFeelingContainer({
    Key key,
    this.title,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(10)),
      child: Container(
        width: SizeConfig.screenWidth,
        child: Container(
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Color(0xFF69F6FF).withOpacity(0.6),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 0,
                    offset: Offset(0, 10),
                    color: Color(0xFF000000).withOpacity(0.15))
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(30)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kMediumHeading.copyWith(
                      color: kBlackColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Text(
                  body,
                  style: kSmallHeading.copyWith(color: kBlackColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
