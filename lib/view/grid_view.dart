import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {

List<Color> colorArray = [
  const Color(0xFFFF6633), const Color(0xFFFFB399), const Color(0xFFFF33FF),
  const Color(0xFFFFFF99), const Color(0xFF00B3E6), const Color(0xFFE6B333),
  const Color(0xFF3366E6), const Color(0xFF999966), const Color(0xFF99FF99),
  const Color(0xFFB34D4D), const Color(0xFF80B300), const Color(0xFF809900),
  const Color(0xFFE6B3B3), const Color(0xFF6680B3), const Color(0xFF66991A),
  const Color(0xFFFF99E6), const Color(0xFFCCFF1A), const Color(0xFFFF1A66),
  const Color(0xFFE6331A), const Color(0xFF33FFCC), const Color(0xFF66994D),
  const Color(0xFFB366CC), const Color(0xFF4D8000), const Color(0xFFB33300),
  const Color(0xFFCC80CC), const Color(0xFF66664D), const Color(0xFF991AFF),
  const Color(0xFFE666FF), const Color(0xFF4DB3FF), const Color(0xFF1AB399),
  const Color(0xFFE666B3), const Color(0xFF33991A), const Color(0xFFCC9999),
  const Color(0xFFB3B31A), const Color(0xFF00E680), const Color(0xFF4D8066),
  const Color(0xFF809980), const Color(0xFFE6FF80), const Color(0xFF1AFF33),
  const Color(0xFF999933), const Color(0xFFFF3380), const Color(0xFFCCCC00),
  const Color(0xFF66E64D), const Color(0xFF4D80CC), const Color(0xFF9900B3),
  const Color(0xFFE64D66), const Color(0xFF4DB380), const Color(0xFFFF4D4D),
  const Color(0xFF99E6E6), const Color(0xFF6666FF)
];
  GridViewScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        // crossAxisSpacing: 8,
        // mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: const [
          Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20.0),
            // ),
            color: Colors.amber,
            child: Center(
              child: Text(
                'sasa',
                style: TextStyle(
                  fontFamily: 'Dongle',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
          ),
          Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20.0),
            // ),
            color: Colors.blue,
            child: Center(
              child: Text(
                'sasa',
                style: TextStyle(
                  fontFamily: 'Dongle',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
          ),
          Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20.0),
            // ),
            color: Colors.red,
            child: Center(
              child: Text(
                'sasa',
                style: TextStyle(
                  fontFamily: 'Dongle',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
          ),
          Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(20.0),
            // ),
            color: Colors.green,
            child: Center(
              child: Text(
                'sasa',
                style: TextStyle(
                  fontFamily: 'Dongle',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
