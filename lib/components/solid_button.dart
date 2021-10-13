import 'package:flutter/material.dart';

class SolidButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final double height;
  final Function press;

  const SolidButton({
    Key key,
    this.title,
    this.bgColor,
    this.height,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(right: 5, top: 5),
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ));
  }
}
