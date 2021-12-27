import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/bottomNavBar.dart';

import '../../constants.dart';
import '../../size_config.dart';

class HelplineScreen extends StatefulWidget {
  static String routeName = "/helplinescreen";
  const HelplineScreen({Key key}) : super(key: key);

  @override
  _HelplineScreenState createState() => _HelplineScreenState();
}

class _HelplineScreenState extends State<HelplineScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: singleScreenGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarSecondary(
              title: 'Helpline',
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(20), top: 20),
              child: Container(
                width: SizeConfig.screenWidth * 0.60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'If it is hard to deal alone, ask for help Andrew!',
                      style:
                          kMediumHeading.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Here we have some helplines, mental health services and professionals',
                      style: kSmallHeading,
                    ),
                    SizedBox(height: 10),
                    PhoneRow(
                      phoneNo: 'CRAS -915544-6455',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'CRAS -915544-6455',
                      style:
                          kMediumHeading.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/mindman.jpg'),
                  ),
                  SizedBox(width: 10),
                  PhoneRow(
                    phoneNo: 'CRAS -915544-6455',
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class PhoneRow extends StatelessWidget {
  final String phoneNo;
  const PhoneRow({
    Key key,
    this.phoneNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          phoneNo,
          style: kMediumHeading.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Icon(Icons.phone, color: kWhiteColor),
      ],
    );
  }
}
