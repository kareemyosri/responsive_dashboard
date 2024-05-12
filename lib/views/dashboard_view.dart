import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';

import '../widgets/adaptive_layout_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (BuildContext context) => const SizedBox(),
        tabletLayout: (BuildContext context) => const SizedBox(),
        desktopLayout: (BuildContext context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
