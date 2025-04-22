import 'package:flutter/material.dart';

void main() {
  runApp(const DashboardUI());
}

class DashboardUI extends StatelessWidget {
  const DashboardUI({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const Text('Flutter Demo Home Page'),
    );
  }
}
