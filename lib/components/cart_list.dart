import 'package:flutter/material.dart';

class CartListItems extends StatelessWidget {
  final String noOfItems, foodName, price;
  const CartListItems({
    Key key,
    this.noOfItems,
    this.foodName,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Text(
            noOfItems,
            style: TextStyle(
              color: Colors.grey.shade100,
            ),
          ),
          SizedBox(width: 35),
          Text(
            foodName,
            style: TextStyle(
              color: Colors.grey.shade100,
            ),
          ),
          Spacer(),
          Text(
            price,
            style: TextStyle(
              color: Colors.grey.shade100,
            ),
          ),
        ],
      ),
    );
  }
}
