import 'package:flutter/material.dart';

import './constants.dart';
import './screens/home_screen.dart';

void main() => runApp(FlutterTask());

class FlutterTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yalla Ya Dawry!",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
