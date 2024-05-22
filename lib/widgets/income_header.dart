import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/range_option.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeOption(),


      ],
    );
  }
}
