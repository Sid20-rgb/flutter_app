import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/view/output.dart';

import '../model/arithmetic.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  int num1 = 0;
  int num2 = 0;
  int result = 0;

  late Arithmetic arithmetic;

  // var arithmetic = Arithmetic();

  @override
  void initState() {
    firstController.text = '67';
    secondController.text = '89';
    super.initState();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  void add() {
    arithmetic = Arithmetic();
    setState(() {
      result = arithmetic.add(
          int.parse(firstController.text), int.parse(secondController.text));
    });
  }

  void showSnackbox_(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        content: Text('/output'),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  final myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 32),
          child: Form(
            key: myKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: firstController,
                  decoration: InputDecoration(
                    hintText: 'Enter first number',
                    border: OutlineInputBorder(),
                    labelText: 'Num1',
                  ),
                  // onChanged: (value) {
                  //   num1 = int.parse(value);
                  //   // setState();
                  // }

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: secondController,
                  decoration: InputDecoration(
                    hintText: 'Enter second number',
                    border: OutlineInputBorder(),
                    labelText: 'Num2',
                  ),
                  // onChanged: (value) {
                  //   num2 = int.parse(value);
                  //   // setState();
                  // }
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a number';
                    }
                    return null;
                  },
                ),
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
                      if (myKey.currentState!.validate())
                        Navigator.pushNamed(context, '/output',
                            arguments: result);
                      // add();
                    },
                    child: Text('Add',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ))),
                SizedBox(height: 20.0),
                Text(
                  "Sum is $result",
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
      ),
    );
  }
}
