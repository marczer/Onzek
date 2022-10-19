import 'package:flutter/material.dart';

import 'Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onzek',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyProfilePage(title: 'Onzek'),
    );
  }
}
