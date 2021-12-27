import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

List feelings = [
  'worried',
  'happy',
  'anxious',
  'grattitude',
  'spiritulasim',
  'selfcompassion',
  'distressed',
  'awesome',
  'fun',
  'exhausted',
  'bored',
  'stressed',
  'content',
  'loneliness',
  'calm',
  'depressed',
  'angry',
  'professionalism',
  'furious',
  '+',
];

class FeelingsContainer extends StatelessWidget {
  const FeelingsContainer({
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
                      'Can you describe the feelings as...?',
                      style: kLargeHeading.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 2.1,
                        ),
                        itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF07EF80).withOpacity(0.56),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 0.9,
                                    color:
                                        Color(0xFF07EF80).withOpacity(0.56))),
                            child: Center(
                              child: Text(
                                feelings[index].toString().toUpperCase(),
                                style: kSmallHeading.copyWith(fontSize: 11),
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
