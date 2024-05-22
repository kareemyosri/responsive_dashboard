import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
            (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDot(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
