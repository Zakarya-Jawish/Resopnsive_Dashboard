import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/views/dashboard_view.dart';

void main() {
  runApp(const DashboardUI());
}

class DashboardUI extends StatelessWidget {
  const DashboardUI({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Dashboard',
      home: DashboardView(),
    );
  }
}
