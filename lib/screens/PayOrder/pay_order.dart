import 'package:flutter/material.dart';
import 'package:jsontoclass/screens/Category/categories.dart';
import 'package:jsontoclass/screens/TotalBill/total_bill.dart';
import 'package:jsontoclass/screens/payment/payment.dart';

class PayOrderScreen extends StatelessWidget {
  const PayOrderScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BillScreen()),
                );
              },
              title: 'pay',
            ),
            SizedBox(height: 10),
            Button(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesScreen()),
                );
              },
              title: 'order',
            )
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String title;
  final Function press;

  const Button({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: MediaQuery.of(context).size.width * .60,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
