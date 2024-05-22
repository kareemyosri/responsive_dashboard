import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_detail_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetailItem extends StatelessWidget {
  const IncomeDetailItem({super.key, required this.incomeDetailModel});
  final IncomeDetailModel incomeDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
