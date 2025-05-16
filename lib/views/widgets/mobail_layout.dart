import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/views/widgets/custom_drawer.dart';

class MobailLayout extends StatelessWidget {
  const MobailLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: const CustomDrawer(), appBar: AppBar());
  }
}
