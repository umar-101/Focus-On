import 'package:flutter/material.dart';

import 'package:jsontoclass/components/solid_button.dart';
import 'package:jsontoclass/constants.dart';
import 'package:jsontoclass/screens/Category/categories.dart';

class EditItemScreen extends StatefulWidget {
  const EditItemScreen({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<EditItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
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
                        MaterialPageRoute(
                            builder: (context) => CategoriesScreen()),
                      );
                    },
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
              height: MediaQuery.of(context).size.height * 0.50,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                            color: Colors.grey.shade100,
                          ),
                        ),
                        SizedBox(width: 35),
                        Text(
                          'Chicken Protein Bowl',
                          style: TextStyle(
                            color: Colors.grey.shade100,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 100,
                          height: MediaQuery.of(context).size.height * 0.45,
                          child: Column(
                            children: [
                              SolidButton(
                                title: 'Add',
                                bgColor: Colors.blue,
                                height: 35,
                              ),
                              SolidButton(
                                title: 'Xtra',
                                bgColor: Colors.blue,
                                height: 35,
                              ),
                              SolidButton(
                                title: 'No',
                                bgColor: Colors.blue,
                                height: 35,
                              ),
                              SolidButton(
                                title: 'O/S',
                                bgColor: Colors.blue,
                                height: 35,
                              ),
                              SolidButton(
                                title: 'Sub',
                                bgColor: Colors.blue,
                                height: 35,
                              ),
                              SolidButton(
                                title: 'Delete',
                                bgColor: kSecondaryColor,
                                height: 35,
                              ),
                              SolidButton(
                                title: 'Modify',
                                bgColor: kSecondaryColor,
                                height: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '1 Required | 0 Selected',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
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
                          child: Container(
                            width: 80,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.red.shade900,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Mods-AC',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
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
