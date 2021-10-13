import 'package:flutter/material.dart';
import 'package:jsontoclass/screens/PayOrder/pay_order.dart';
import 'package:jsontoclass/screens/splash/splash.dart';

import 'package:jsontoclass/size_config.dart';

import 'components/tableDialog.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PayOrderScreen()),
                  );
                },
                child: Container(
                  color: Colors.grey.shade900,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              ' # 15',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(width: getProportionateScreenWidth(30)),
                            Text(
                              '1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Spacer(),
                            Text(
                              '9:28 PM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          child: Text(
                            'Focus POS',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                HomeButtons(
                  title: 'Start Check',
                  bgColor: Colors.blue,
                  press: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => tableDialog(context),
                    );
                  },
                ),
                HomeButtons(
                  title: 'Log Out',
                  bgColor: Colors.red,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SplashScreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeButtons extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Function press;
  const HomeButtons({
    Key key,
    this.title,
    this.bgColor,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: press,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
