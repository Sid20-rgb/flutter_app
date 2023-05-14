import 'package:flutter/material.dart';

import '../common/show_my_message.dart';

class CardViewws extends StatefulWidget {
  const CardViewws({super.key});

  @override
  State<CardViewws> createState() => _CardViewwsState();
}

class _CardViewwsState extends State<CardViewws> {
  Widget box(String texts, Color colourss) {
    return SizedBox(
      height: 200.0,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: colourss,
        child: Center(
          child: Text(
            texts,
            style: const TextStyle(
              fontFamily: 'Dongle',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            // textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cards',
            style: TextStyle(
              // fontFamily: 'Dongle',
              fontSize: 35.0,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          // itemCount: 5,
          // itemBuilder: ,
          children: <Widget>[
            for (var i = 1; i <= 10; i++) ...{
              GestureDetector(
                onTap: () {
                  showSnackbox(context, '');
                },
                child: box("Inside card $i", Colors.cyan),
              ),
            }
          ],
        ));
  }
}
