import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/solidRoundBtn.dart';

import '../../constants.dart';
import '../../size_config.dart';

const String para =
    "These assessments are not a diagnostic, they are just a pictura of the moment and if you are in doubt, you can look for a mental health care  a professional. ";

class CautionScreen extends StatelessWidget {
  static String routeName = "/cautionscreen";
  const CautionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: darkScreenGradient,
        ),
        child: Column(
          children: [
            AppBarSecondary(
              title: 'Cautions',
              press: () {
                Navigator.pushNamed(context, "/aboutscreen");
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40), vertical: 20),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    para,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kWhiteColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  SolidRoundButton(
                    title: "I agree",
                    press: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
