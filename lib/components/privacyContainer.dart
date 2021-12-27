import 'package:flutter/material.dart';
import 'package:jsontoclass/constants.dart';

import '../size_config.dart';

List privacyText = [
  '  alues are like a compass that keep us headed in a desired direction and are distinct from goals. Goals are the specific ways you intend to execute your values. A goal is something that we aim for and check off once we have accomplished it. Being responsible is a value. Owning a home is a goal. You can engage in responsible behavior each day that may lead to achieving your goal and continue to live that value even after you have achieved the goal.',
  'Data 2',
  'Data 3',
  'Data4'
];
int currentPage = 0;

class PrivacyContainer extends StatefulWidget {
  const PrivacyContainer({
    Key key,
  }) : super(key: key);

  @override
  _PrivacyContainerState createState() => _PrivacyContainerState();
}

class _PrivacyContainerState extends State<PrivacyContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFF69F6FF).withOpacity(0.6))),
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/images/privacy.png'),
            ),
            SizedBox(height: 15),
            Container(
              height: 180,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: privacyText.length,
                itemBuilder: (context, index) => Text(privacyText[index],
                    style: kSmallHeading.copyWith(
                        height: 1.5, color: kBlackColor, fontSize: 11)),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      privacyText.length, (index) => buildDot(index)),
                )),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == index ? kGreenColor : Colors.grey,
      ),
    );
  }
}
