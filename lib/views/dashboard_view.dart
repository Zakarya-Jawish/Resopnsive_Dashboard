import 'package:flutter/material.dart';
import 'package:responsive_dashboard_x/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard_x/views/widgets/desktop_layout.dart';
import 'package:responsive_dashboard_x/views/widgets/mobail_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobailLayout(),
        tabletLayout: (context) => const Text('teblet'),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
