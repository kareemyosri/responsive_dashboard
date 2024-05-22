import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_detail_model.dart';
import 'package:responsive_dashboard/widgets/income_detail_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '%40'),
    IncomeDetailModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    IncomeDetailModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    IncomeDetailModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),


  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => IncomeDetailItem(incomeDetailModel: e)).toList(),
    );
  }
}
