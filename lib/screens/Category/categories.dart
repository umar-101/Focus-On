import 'package:flutter/material.dart';
import 'package:jsontoclass/components/cart_list.dart';
import 'package:jsontoclass/components/date_time_row.dart';
import 'package:jsontoclass/components/outlined_button.dart';
import 'package:jsontoclass/components/solid_button.dart';
import 'package:jsontoclass/screens/editItem/edit_item.dart';
import 'package:jsontoclass/screens/home/home.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesScreen> {
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
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }),
                  SolidButton(
                      title: 'Save',
                      bgColor: Colors.blue,
                      height: 40,
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditItemScreen()),
                        );
                      }),
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
              height: MediaQuery.of(context).size.height * 0.40,
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
              color: Colors.grey,
            ),
            // Container(
            //   child: Row(
            //     children: [
            //       SolidButton(
            //         title: 'Reset',
            //         bgColor: Colors.blue,
            //         height: 40,
            //       ),
            //       SolidButton(
            //         title: 'Recorder',
            //         bgColor: Colors.blue,
            //         height: 40,
            //       ),
            //       SolidButton(
            //         title: 'Delete',
            //         bgColor: Colors.blue,
            //         height: 40,
            //       ),
            //       SolidButton(
            //         title: 'Modify',
            //         bgColor: Colors.blue,
            //         height: 40,
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: OutlinButton(),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 100,
                            childAspectRatio: 1.6,
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 1),
                        itemCount: 10,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            width: 80,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFF232123),
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.blue, width: 2)),
                            child: Center(
                              child: Text(
                                'Adult Chicken',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
