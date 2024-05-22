import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_body.dart';
import 'package:responsive_dashboard/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16,),
          IncomeBody()
        ],
      ),
    );
  }
}

