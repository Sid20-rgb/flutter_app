import 'package:flutter/material.dart';

showSnackbox(
  BuildContext context,
  String message, {
  Color color = Colors.green,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      // backgroundColor: Colors.green,
      content: Text('This is a snackbox'),
      duration: Duration(seconds: 3),
      // behavior: SnackBarBehavior.floating,
    ),
  );
}
