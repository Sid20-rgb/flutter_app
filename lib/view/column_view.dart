import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                Icons.star,
                size: 100,
                color: Colors.green,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.green,
              )
              ],
            // Spacer(),
            
            ),
            Row(
              children: [
                Icon(
                Icons.star,
                size: 100,
                color: Colors.green,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.green,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.green,
              ),
              
              ],
            )
            
            // Spacer(),
           
          ],
        ),
      ),
    );
  }
}
