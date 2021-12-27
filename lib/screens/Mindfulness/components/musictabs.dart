import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class MusicTabs extends StatelessWidget {
  final String title, imageUrl, duration;
  final Function press;
  const MusicTabs({
    Key key,
    this.title,
    this.imageUrl,
    this.duration,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(10)),
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight * 0.14,
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: getProportionateScreenWidth(90),
                    height: getProportionateScreenHeight(80),
                    child: Image(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Text(
                    title,
                    style: kLargeHeading.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(22)),
                  ),
                  Spacer(),
                  Container(
                    child: Image(
                      width: getProportionateScreenWidth(80),
                      height: getProportionateScreenHeight(70),
                      image: AssetImage('assets/images/playbutton.png'),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: getProportionateScreenWidth(80),
                    ),
                    child: Text(duration, style: kSmallHeading),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
