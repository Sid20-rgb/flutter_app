import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/area.dart';

import '../model/area.dart';

class CirclView extends StatefulWidget {
  const CirclView({super.key});

  @override
  State<CirclView> createState() => _CirclViewState();
}

class _CirclViewState extends State<CirclView> {
  double pi = 3.14;
  double r = 0;
  double result = 0;
  late Area area;

  // var arithmetic = Arithmetic();

  // void add() {
  //   arithmetic = Arithmetic();
  //   setState(() {
  //     result = arithmetic.add(num1, num2);
  //   });
  // }

  void calc() {
    area = Area();
    setState(() {
      result = area.calc(r, pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                  // controller: num1,
                  decoration: InputDecoration(
                    hintText: 'Enter Radius',
                    border: OutlineInputBorder(),
                    labelText: 'Radius',
                  ),
                  onChanged: (value) {
                    r = double.parse(value);
                    // setState();
                  }),
              SizedBox(height: 20.0),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    shadowColor: Colors.grey,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(500, 50),
                  ),
                  onPressed: () {
                    calc();
                  },
                  child: Text('Calculate',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ))),
              SizedBox(height: 20.0),
              Text(
                "Area of Circle is $result",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
