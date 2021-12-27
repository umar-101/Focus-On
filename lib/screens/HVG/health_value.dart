import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/peer_tabs.dart';
import 'package:jsontoclass/components/privacyContainer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../constants.dart';
import '../../size_config.dart';

class HealthValueScreen extends StatelessWidget {
  static String routeName = "/healthvaluescreen";
  const HealthValueScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: bgGradient,
            ),
            child: Column(
              children: [
                AppBarSecondary(
                  title: 'Values, Goals &\nHealth',
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(20)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hey,Andrew',
                                style: kMediumHeading.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'I hope this section can help you clarify what are your core values in life. Go ahead and choose, take it easy you can add or correct in the future. You can also create goals in this direction. Enjoy it! ',
                                style: kSmallHeading.copyWith(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/valuegoals.png'))))
                    ],
                  ),
                ),
                PrivacyContainer(),
                PeerSupportTabs(
                  title: 'Values game',
                  press: () {
                    Navigator.pushNamed(context, "/choosevaluescreen");
                  },
                  imageUrl: 'assets/images/valuegoals.png',
                ),
                PeerSupportTabs(
                  // Navigates to result screen
                  title: ' Set your goals',
                  press: () {
                    Navigator.pushNamed(context, "/resultevaluationscreen");
                  },
                  imageUrl: 'assets/images/goals.jpg',
                ),
                Container(
                    child: CircularPercentIndicator(
                  radius: getProportionateScreenWidth(100),
                  lineWidth: getProportionateScreenWidth(10),
                  percent: 0.5,
                  center:
                      Center(child: Text('   2\nLevel', style: kLargeHeading)),
                  progressColor: Color(0xFF23FF7B),
                )),
              ],
            ),
          ),
        ));
  }
}
