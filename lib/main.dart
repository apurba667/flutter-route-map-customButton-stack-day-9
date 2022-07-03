import 'package:flutter/material.dart';
import 'package:route/contact_list.dart';
import 'package:route/custom_button.dart';
import 'package:route/home.dart';
import 'package:route/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Contact(),
    );
  }
}
