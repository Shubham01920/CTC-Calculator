import 'package:ctc_calculator/src/pages/contact_page.dart';
import 'package:ctc_calculator/src/pages/privacy_policy_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomAppBar()
    );
  }
}
