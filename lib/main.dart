import 'package:easychange/screens/input_phone.dart';
import 'package:easychange/screens/landing.dart';
import 'package:easychange/screens/login.dart';
import 'package:easychange/screens/register.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Landing(),
    );
    //
  }
}
