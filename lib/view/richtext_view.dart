import 'package:flutter/material.dart';

class Rich extends StatefulWidget {
  const Rich({super.key});

  @override
  State<Rich> createState() => _RichState();
}

class _RichState extends State<Rich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RichText(
          text: const TextSpan(
            text: "My",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.red
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Name is',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                )
              ),
              TextSpan(
                text: ' Sid',
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.green
                )
              )
            ]
          )
        ),
      ),
    );
  }
}
