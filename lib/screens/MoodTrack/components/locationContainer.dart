import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

List feelings = [
  'JOB',
  'Friends',
  'Home',
  'Bed',
  'Stdying',
  'Phone',
  'Cooking',
  'Family',
  'School',
  'Resturant',
  'Gym',
  'Shopping',
  'Bar',
  'Beach',
  'other',
];
List icons = [
  'assets/icons/job.png',
  'assets/icons/friends.png',
  'assets/icons/home.png',
  'assets/icons/bed.png',
  'assets/icons/studying.png',
  'assets/icons/phone.png',
  'assets/icons/cooking.png',
  'assets/icons/family.png',
  'assets/icons/school.png',
  'assets/icons/resturant.png',
  'assets/icons/gym.png',
  'assets/icons/shopping.png',
  'assets/icons/bar.png',
  'assets/icons/beach.png',
  'assets/icons/add.png',
];

class LocationContainer extends StatelessWidget {
  const LocationContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(10)),
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.40,
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Alright. Where are you now?',
                      style: kLargeHeading.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1.3,
                        ),
                        itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                          child: Container(
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                      width: getProportionateScreenWidth(45),
                                      height: getProportionateScreenHeight(35),
                                      child: Image(
                                          image: AssetImage(icons[index]))),
                                  SizedBox(height: 5),
                                  Text(
                                    feelings[index].toString().toUpperCase(),
                                    style: kSmallHeading.copyWith(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        itemCount: feelings.length,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
