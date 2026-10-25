import 'package:flutter/material.dart';

class HelloFlutterApp extends StatelessWidget {
  const HelloFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.flutter_dash, size: 100, color: Colors.blue),
          SizedBox(height: 20),
          Text(
            'Hello Flutter!',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Name: Anant Kumar Singh', style: TextStyle(fontSize: 20)),
          SizedBox(height: 8),
          Text('Course: B.Tech CSE', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
