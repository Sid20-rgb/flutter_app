import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Output extends StatefulWidget {
  const Output({super.key});

  @override
  State<Output> createState() => _OutputState();
}


class _OutputState extends State<Output> {
  int? result = 0;
  
  
  @override
  void didChangeDependencies() {
      result = ModalRoute.of(context)!.settings.arguments as int?;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    // result = ModalRoute.of(context)!.settings.arguments as int?;
    return Scaffold(
        body: Center(
      child: Text("Result is: $result"),
    ));
  }
}
