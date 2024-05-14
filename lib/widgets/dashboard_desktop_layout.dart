import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

import 'all_expenses.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 32,),
        Expanded(
            flex: 2,
            child: Column(
          children: [
            Expanded(child: AllExpenses())
          ],
        ))
      ],
    );
  }
}
