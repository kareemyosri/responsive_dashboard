import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_body.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel, required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isSelected? const Color(0xff4EB7F2): Colors.white,
        shape: RoundedRectangleBorder(
          side:  BorderSide(color:isSelected? const Color(0xff4EB7F2): const Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            AllExpensesItemHeader(image: allExpensesItemModel.image, isSelected: isSelected,),
          const SizedBox(height: 20,),
          AllExpensesItemBody(allExpensesItemModel: allExpensesItemModel, isSelected: isSelected,)
        ],
      ),
    );
  }
}
