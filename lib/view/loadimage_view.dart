import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoadImage extends StatefulWidget {
  const LoadImage({super.key});

  @override
  State<LoadImage> createState() => _LoadImageState();
}

class _LoadImageState extends State<LoadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image.network('https://prd-rteditorial.s3.us-west-2.amazonaws.com/wp-content/uploads/2021/01/30155602/harry-potter-and-the-sorcerers-stone-700x380.jpg'),
              // Image.asset("assets/images/sp.png")

              // CircleAvatar(
              //   radius: 150,
              //   backgroundImage: AssetImage("assets/images/sp.png"),

              // ),

              for (int i = 0; i < 10; i++) ...{
                CircleAvatar(
                  radius: 150,
                  backgroundImage: NetworkImage(
                      'https://prd-rteditorial.s3.us-west-2.amazonaws.com/wp-content/uploads/2021/01/30155602/harry-potter-and-the-sorcerers-stone-700x380.jpg'),
                ),
              }
            ],
          ),
        ),
      ),
    );
  }
}
