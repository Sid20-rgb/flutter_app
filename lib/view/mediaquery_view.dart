import 'package:flutter/material.dart';

class MediaQuerySc extends StatefulWidget {
  const MediaQuerySc({super.key});

  @override
  State<MediaQuerySc> createState() => _MediaQueryScState();
}

class _MediaQueryScState extends State<MediaQuerySc> {
  showSnackBarr(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        content: Text('j'),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
  // showSnackBarr(BuildContext context, String message) {
  //   const SnackBar(
  //     backgroundColor: Colors.green,
  //     content: Text('j'),
  //     duration: Duration(seconds: 3),
  //     behavior: SnackBarBehavior.floating,
  //   );
  //   ScaffoldMessenger.of(context).showSnackBar();
  // }

  // String message = "HH";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showSnackBarr(context, 's');
                  },
                  child: const Text("Click Mee"),
                ),
                // height: 600,
              ),
            ),
            Expanded(
              // fit: FlexFit.tight,/
              child: Container(
                width: double.infinity,
                // height: 20,
                color: Colors.green,
                child: ElevatedButton(
                  child: const Text('Click Me Again'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('Hello World'),
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
              ),
            ),
            // Container(
            //   width: double.infinity,
            //   height: MediaQuery.of(context).size.height * .33,
            //   color:  Colors.black,
            // ),
          ],
        ),
      ),
    );
  }
}
