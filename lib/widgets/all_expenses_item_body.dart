import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesItemBody extends StatelessWidget {
  const AllExpensesItemBody({super.key, required this.allExpensesItemModel, required this.isSelected});
final AllExpensesItemModel allExpensesItemModel;
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context).copyWith(
                color: isSelected? Colors.white : const Color(0xff064061)
            ),
          ),
        ),
        const SizedBox(height: 8,),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context).copyWith(
              color: isSelected? const Color(0xffFAFAFA) : const Color(0xffAAAAAA)
            ),
          ),
        ),
        const SizedBox(height: 16,),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(
                color: isSelected? Colors.white : const Color(0xff4EB7F2)
            ),
          ),
        ),
      ],
    );
  }
}
