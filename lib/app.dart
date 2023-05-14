import 'package:flutter/material.dart';
import 'package:flutter_app/view/arithmetic_view.dart';
import 'package:flutter_app/view/card_view.dart';
import 'package:flutter_app/view/circle.dart';
import 'package:flutter_app/view/column_view.dart';
// import 'package:flutter_app/view/output.dart';
import 'package:flutter_app/view/container_view.dart';
import 'package:flutter_app/view/dashboard.dart';
import 'package:flutter_app/view/display_student_view.dart';
import 'package:flutter_app/view/grid_view.dart';
import 'package:flutter_app/view/inputdetails.dart';
import 'package:flutter_app/view/listtile_view.dart';
import 'package:flutter_app/view/loadimage_view.dart';
import 'package:flutter_app/view/mediaquery_view.dart';
import 'package:flutter_app/view/name_view.dart';
import 'package:flutter_app/view/output.dart';
import 'package:flutter_app/view/output_view.dart';
import 'package:flutter_app/view/richtext_view.dart';
import 'package:flutter_app/view/rowsncol.dart';
import 'package:flutter_app/view/si_view.dart';
import 'package:flutter_app/view/student_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ArithmeticView(),
      // home: Dashboard(),

      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/arithmeticRoute': (context) => const ArithmeticView(),
        '/siRoute': (context) => const SiView(),
        '/circle': (context) => const CirclView(),
        '/name': (context) => const Name(),
        '/richtext': (context) => const Rich(),
        '/column': (context) => const ColumnView(),
        '/output': (context) => const Output(),
        '/container': (context) => const Container_(),
        '/loadimage': (context) => const LoadImage(),
        '/inputdetails': (context) => const StudentDetailsView(),
        '/displayStudentRoute': (context) => const DisplayStudentView(),
        '/mediaquery': (context) => const MediaQuerySc(),
        '/rowcol': (context) => const RowsColumn(),
        '/studentview': (context) => const StudentView(),
        '/outputview':(context) => const OutputView(),
        '/listtile':(context) => ListTTile(),
        '/cardview': (context) => const CardViewws(),
        '/gridviewscreen':(context) => GridViewScreen()
      },
    );
  }
}
