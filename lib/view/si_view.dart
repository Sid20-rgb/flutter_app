import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../model/value.dart';

class SiView extends StatefulWidget {
  const SiView({super.key});

  @override
  State<SiView> createState() => _SiViewState();
}

class _SiViewState extends State<SiView> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  final thirdController = TextEditingController();
  double p = 0;
  double t = 0;
  double r = 0;
  double result = 0;

  late Value value;
  @override
  // void initState() {
  //   firstController.text = '67';
  //   secondController.text = '89';
  //   thirdController.text = '90';
  //   super.initState();
  // }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    thirdController.dispose();
    super.dispose();
  }

  void si() {
    value = Value();
    setState(() {
      result = value.si(
        double.parse(firstController.text),
        double.parse(secondController.text),
        double.parse(thirdController.text)
        );
    });
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
                    controller: firstController,
                    decoration: InputDecoration(
                      hintText: 'Enter principle',
                      border: OutlineInputBorder(),
                      labelText: 'Num1',
                    ),
                    // onChanged: (value) {
                    //   p = double.parse(value);
                    //   // setState();
                    // }
                    validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a number';
                    }
                    else if(value.length < 2){
                      return 'Number must be atleast more than 2 digit';
                    }
                    return null;
                  },
                    ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: secondController,
                    // controller: num2,
                    decoration: InputDecoration(
                      hintText: 'Enter time',
                      border: OutlineInputBorder(),
                      labelText: 'Num2',
                    ),
                    // onChanged: (value) {
                    //   t = double.parse(value);
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
                  controller: thirdController,
                    // controller: num2,
                    decoration: InputDecoration(
                      hintText: 'Enter rate',
                      border: OutlineInputBorder(),
                      labelText: 'Num3',
                    ),
                    // onChanged: (value) {
                    //   r = double.parse(value);
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
                      
                      if(myKey.currentState!.validate())
                      si();
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
                  "Simple Interest is $result",
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
