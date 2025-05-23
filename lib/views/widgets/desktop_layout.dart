import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/views/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [SizedBox(width: 300, child: CustomDrawer())],
    );
  }
}
