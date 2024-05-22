import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dashboard_Tablet_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';

import '../widgets/adaptive_layout_widget.dart';
import '../widgets/dashboard_mobile_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (BuildContext context) => const DashboardMobileLayout(),
        tabletLayout: (BuildContext context) => const DashboardTabletLayout(),
        desktopLayout: (BuildContext context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
