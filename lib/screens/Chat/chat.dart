import 'package:flutter/material.dart';
import 'package:jsontoclass/components/appBarSecondary.dart';
import '../../constants.dart';
import '../../size_config.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chatscreen";
  const ChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          AppBarSecondary(
            title: 'Depression Group',
            press: () {
              Navigator.pushNamed(context, "/healthvaluescreen");
            },
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.3),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  color: Color(0xFFFEC534),
                  borderRadius: BorderRadius.circular(16)),
              child: Center(
                  child: Text(
                '19/11/2021 - Friday',
                style: kSmallHeading,
              )),
            ),
          ),
          SizedBox(height: 20),
          MsgTime(),
          SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: (AssetImage('assets/images/mindman.jpg')),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.80),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Hello! What happened, Johnny? How could I be useful? ',
                        style: kSmallHeading.copyWith(fontSize: 14)),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Image(
                  image: AssetImage('assets/images/hand.png'),
                  width: 30,
                  height: 30)
            ],
          ),
          Spacer(),
          Container(
            height: 50,
            width: SizeConfig.screenWidth,
            color: Color(0xFFF5F5F5),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                hintText: 'Type your message here',
                border: InputBorder.none,
                hintStyle: kSmallHeading.copyWith(color: Color(0xFFC4C4C4)),
                suffixIcon: Icon(Icons.send, color: kBlackColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MsgTime extends StatelessWidget {
  const MsgTime({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Johnny ',
        ),
        Text(
          '- Today at 05:19 p-m',
        )
      ],
    );
  }
}
