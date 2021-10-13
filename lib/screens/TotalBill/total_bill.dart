import 'package:flutter/material.dart';
import 'package:jsontoclass/components/cart_list.dart';
import 'package:jsontoclass/components/date_time_row.dart';
import 'package:jsontoclass/components/solid_button.dart';
import 'package:jsontoclass/screens/home/home.dart';
import 'package:jsontoclass/screens/payment/payment.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DateTimeRow(),
            SizedBox(height: 5),
            Text(
              '00',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                children: [
                  SolidButton(
                    title: 'Cancel',
                    bgColor: Colors.blue,
                    height: 40,
                  ),
                  SolidButton(
                    title: 'Save',
                    bgColor: Colors.blue,
                    height: 40,
                  ),
                  SolidButton(
                    title: 'Pay',
                    bgColor: Colors.blue,
                    height: 40,
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Column(
                children: [
                  CartListItems(
                    noOfItems: '1',
                    foodName: 'A Belt Sandwich',
                    price: '\$12.89',
                  ),
                  SizedBox(height: 15),
                  CartListItems(
                    noOfItems: '1',
                    foodName: 'A Belt Chicken',
                    price: '\$2.89',
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade100,
            ),
            SizedBox(height: 10),
            PricingRow(
              title: 'Sub Total',
              price: '\$20.89',
            ),
            PricingRow(
              title: 'Tax',
              price: '\$2.89',
            ),
            PricingRow(
              title: 'Total',
              price: '\$23.09',
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Balance Due',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Spacer(),
                Text(
                  '\$17.99',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    SolidButton(
                      title: 'CheckList',
                      bgColor: Colors.blue,
                      height: 50,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                    SolidButton(
                      title: 'Print',
                      bgColor: Colors.blue,
                      height: 50,
                    ),
                    SolidButton(
                      title: 'Pay',
                      bgColor: Colors.blue,
                      height: 50,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PricingRow extends StatelessWidget {
  final String title;
  final String price;
  const PricingRow({
    Key key,
    this.title,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Spacer(),
          Text(
            price,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
