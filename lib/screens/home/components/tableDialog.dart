import 'package:flutter/material.dart';
import 'package:jsontoclass/screens/Category/categories.dart';

AlertDialog tableDialog(BuildContext context) {
  return AlertDialog(
    backgroundColor: Colors.blue,
    title: Text(
      "Table Name",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
    content: TextField(
      style: TextStyle(color: Colors.white),
      onEditingComplete: () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => guestDialog(context),
        );
      },
      decoration: InputDecoration(
        hintText: 'Enter table name',
        hintStyle: TextStyle(
          color: Colors.grey.shade200,
          fontSize: 15,
        ),
      ),
    ),
  );
}

AlertDialog guestDialog(BuildContext context) {
  return AlertDialog(
    backgroundColor: Colors.blue,
    title: Text(
      "Guest Name",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
    ),
    content: TextField(
      style: TextStyle(color: Colors.white),
      onEditingComplete: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoriesScreen()),
        );
      },
      decoration: InputDecoration(
        hintText: 'Enter Guest name',
        hintStyle: TextStyle(
          color: Colors.grey.shade200,
          fontSize: 15,
        ),
      ),
    ),
  );
}
