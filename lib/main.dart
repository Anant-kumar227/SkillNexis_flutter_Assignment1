import 'package:flutter/material.dart';
import 'package:hello_flutter/bottomnavigation.dart';

void main() {
  runApp(const PersonalInfoApp());
}

class PersonalInfoApp extends StatelessWidget {
  const PersonalInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Info App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const Bottomnavigation(),
    );
  }
}
