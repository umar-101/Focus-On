import 'package:flutter/material.dart';

import '../constants.dart';

class OutlinButton extends StatelessWidget {
  const OutlinButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xFF232123),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: kYellowColor, width: 2)),
      child: Center(
        child: Text(
          'BEER',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
