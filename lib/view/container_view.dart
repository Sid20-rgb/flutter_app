import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Container_ extends StatelessWidget {
  const Container_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          child: Text('Hello World'),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
            border: Border.all(color: Colors.black,
            width: 2)
          )
          ,
              ),
        )),
    );
  }
}