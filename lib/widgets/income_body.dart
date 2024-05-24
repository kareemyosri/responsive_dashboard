
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1600
        ?const Expanded(child: Padding(
          padding: EdgeInsets.all(12),
          child: DetailedIncomeChart(),
        )):
     const Row(
     crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(
            flex: 2,
            child: IncomeDetails())
      ],
    );
  }
}
