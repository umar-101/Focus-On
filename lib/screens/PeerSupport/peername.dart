import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import 'package:jsontoclass/components/solidRoundBtn.dart';
import '../../constants.dart';
import '../../size_config.dart';

class PeerNameScreen extends StatelessWidget {
  static String routeName = "/peernamescreen";
  const PeerNameScreen({Key key}) : super(key: key);

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
                  height: SizeConfig.screenHeight * 0.30,
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: getProportionateScreenWidth(15)),
                        Text(
                          'Anonymity',
                          style: kLargeHeading.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        RulesRow(),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'NickName',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Container(
                                  width: getProportionateScreenWidth(250),
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        width: 1,
                                        color: Color(0xFF69F6FF),
                                      )),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'user name',
                                        hintStyle: kSmallHeading,
                                        contentPadding: EdgeInsets.all(15),
                                        border: InputBorder.none),
                                    onChanged: (value) {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SolidRoundButton(
                  title: "Participate",
                  press: () {
                    Navigator.pushNamed(context, "/chatscreen");
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
            'You can use a nickname to protect your identity :)',
          ),
        )
      ],
    );
  }
}
