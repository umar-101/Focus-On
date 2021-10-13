import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jsontoclass/components/solid_button.dart';
import 'package:jsontoclass/screens/paymentProcess/payment_process.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../size_config.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Specify Payments',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(30),
                vertical: getProportionateScreenHeight(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PlusMinusButton(
                    icon: Icons.remove,
                    press: () {},
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  PlusMinusButton(
                    icon: Icons.add,
                    press: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(120),
            ),
            Text(
              '1 Payment 0f',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text(
              '\$40.89',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            // Container(
            //   width: 300,
            //   height: 100,
            //   color: Colors.orange,
            //   child: QrImage(
            //     data: "1234567890",
            //     version: QrVersions.auto,
            //     size: 50.0,
            //   ),
            // ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(50)),
              child: Container(
                height: 60,
                child: SolidButton(
                  title: 'Credit',
                  bgColor: Colors.grey.shade600,
                  height: 50,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(50)),
              child: Row(
                children: [
                  SolidButton(
                    title: 'QR',
                    bgColor: Colors.blue,
                    height: 50,
                    press: () {
                      void showDialog() {
                        showGeneralDialog(
                            context: context,
                            pageBuilder: (_, __, ___) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                height: 300,
                                color: Colors.amberAccent,
                              );
                            });
                      }

                      ;
                    },
                  ),
                  SolidButton(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentProcessScreen()),
                      );
                    },
                    title: 'Cash',
                    bgColor: Colors.blue,
                    height: 50,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget qrDialog() {
    return Container(
      color: Colors.white,
      height: 100,
      child: QrImage(
        data: "1234567890",
        version: QrVersions.auto,
        size: 50.0,
      ),
    );
  }
}

class PlusMinusButton extends StatelessWidget {
  final IconData icon;
  final Function press;
  const PlusMinusButton({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: getProportionateScreenWidth(90),
        height: getProportionateScreenWidth(90),
        color: Colors.grey.shade900,
        child: Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
