import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/change.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  int counter = 0;
  String name = "asd";

  late Names obj;

  void updateText() {
    obj = Names();
    setState(() {
      name = obj.displayName(counter++);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              updateText();
            },
            child: Text("Change Name! $name"),
          ),
        ),
      ),
    );
  }
}
