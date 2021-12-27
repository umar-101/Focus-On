import 'package:flutter/material.dart';

import '../constants.dart';

class LoginRegButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Function press;
  const LoginRegButton({
    Key key,
    this.title,
    this.bgColor,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
              color: bgColor,
              border: Border.all(
                color: kPrimaryColor,
                width: 1,
              )),
          height: 50,
          child: Center(
            child: Text(
              title,
              style: kMediumHeading.copyWith(
                  color: kBlackColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
