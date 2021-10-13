import 'package:flutter/material.dart';
import 'package:jsontoclass/components/solid_button.dart';

import '../../size_config.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          Text(
            ' Payment Successful',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: getProportionateScreenHeight(70)),
          Text(
            'Receipt?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(30)),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  SolidButton(
                    title: 'Print',
                    bgColor: Colors.teal,
                    height: 50,
                  ),
                  SizedBox(width: getProportionateScreenWidth(5)),
                  SolidButton(
                    title: 'Email',
                    bgColor: Colors.teal,
                    height: 50,
                  ),
                  SizedBox(width: getProportionateScreenWidth(5)),
                  SolidButton(
                    title: 'SMS',
                    bgColor: Colors.teal,
                    height: 50,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(30)),
            child: Container(
              height: 60,
              child: Row(
                children: [
                  SolidButton(
                    title: 'Continue',
                    bgColor: Colors.teal,
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          Text(
            'Scan QR Code for Receipt',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      )),
    );
  }
}
