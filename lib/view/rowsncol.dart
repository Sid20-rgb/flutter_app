import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RowsColumn extends StatelessWidget {
  const RowsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Rows and Column'),
          ),
      body: Column(
        children: [
          Row(
            children: [
              
              Expanded(
                child: Container(
                  child: Center(child: Text('Container1')),
                  height: 80,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  child: Center(child: Text('Container2')),
                  color: Colors.red,
                  height: 80,
                ),
              ),
              Expanded(
                child: Container(
                  child: Center(child: Text('Container3')),
                  height: 80,
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              child: Center(child: Text("Container1")),
              color: Colors.purple,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              child: Center(child: Text("Container1")),
              color: Colors.blue,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: double.infinity,
              child: Center(child: Text("Container1")),
              color: Colors.purple,
            ),
          ),
        ],   
    ),
    );
  }
}