import 'package:flutter/material.dart';

class DateTimeRow extends StatelessWidget {
  const DateTimeRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Check # 15',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Spacer(),
        Text(
          '10-9-2021',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 15),
        Text(
          '9:28 PM',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
