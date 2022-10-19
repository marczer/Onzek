import 'package:flutter/material.dart';
import 'package:onzek/Compte.dart';

import 'Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      title: 'Onzek',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MonCompte(),
    );
  }
}
