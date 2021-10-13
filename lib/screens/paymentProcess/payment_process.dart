import 'package:flutter/material.dart';

import '../../size_config.dart';

class PaymentProcessScreen extends StatelessWidget {
  const PaymentProcessScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
          child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(30)),
            Text(
              '\$40.89',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text(
              'Processing Payment',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Text(
              'Please Wait',
              style: TextStyle(
                color: Colors.grey.shade100,
                fontSize: 16,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
