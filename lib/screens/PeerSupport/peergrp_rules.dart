import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import '../../constants.dart';
import '../../size_config.dart';

class PeerGrpRuleScreen extends StatelessWidget {
  static String routeName = "/peergrprulescreen";
  const PeerGrpRuleScreen({Key key}) : super(key: key);

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
                          'Group Rules',
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
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/peergrptipscreen");
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: kWhiteColor,
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
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
