import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class PeerSupportTabs extends StatelessWidget {
  final String title, imageUrl;
  final Function press;
  const PeerSupportTabs({
    Key key,
    this.title,
    this.imageUrl,
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
          height: SizeConfig.screenHeight * 0.15,
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  width: getProportionateScreenWidth(80),
                  height: getProportionateScreenHeight(90),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(15)),
                Text(
                  title,
                  style: kLargeHeading.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(22)),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kWhiteColor,
                  size: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
