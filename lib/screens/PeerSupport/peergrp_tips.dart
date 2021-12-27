import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/solidRoundBtn.dart';
import '../../constants.dart';
import '../../size_config.dart';

class PeerGrpTipScreen extends StatelessWidget {
  static String routeName = "/peergrptipscreen";
  const PeerGrpTipScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: Container(
          child: Column(
            children: [
              AppBarSecondary(
                title: 'Depression Group',
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30),
                    vertical: getProportionateScreenHeight(10)),
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight * 0.50,
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: getProportionateScreenWidth(15)),
                        Text(
                          'Tips for participants',
                          style: kLargeHeading.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                          ),
                        ),
                        RulesRow(),
                        RulesRow(),
                        RulesRow(),
                        RulesRow(),
                        RulesRow(),
                      ],
                    ),
                  ),
                ),
              ),
              SolidRoundButton(
                  title: "I agree",
                  press: () {
                    Navigator.pushNamed(context, "/peernamescreen");
                  })
            ],
          ),
        ));
  }
}

class RulesRow extends StatelessWidget {
  const RulesRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: CircleAvatar(
            radius: 5,
            backgroundColor: kPrimaryColor,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            'This group is a space of growing and the encouragement..',
          ),
        )
      ],
    );
  }
}
