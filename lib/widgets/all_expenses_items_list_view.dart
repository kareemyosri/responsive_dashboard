import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/aap_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemSListView extends StatefulWidget {
   const AllExpensesItemSListView({super.key});


  @override
  State<AllExpensesItemSListView> createState() => _AllExpensesItemSListViewState();
}

class _AllExpensesItemSListViewState extends State<AllExpensesItemSListView> {
  final  List<AllExpensesItemModel> expensesItems = const[
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129')
  ];
   int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: expensesItems.asMap().entries.map((e) {
        return  Expanded(
            child: GestureDetector(
              onTap:(){
                setState(() {
                  selectedIndex =e.key;
                });
              } ,
              child: Padding(
                padding: e.key==1? const EdgeInsets.symmetric(horizontal: 12):EdgeInsets.zero,
                child: AllExpensesItem(allExpensesItemModel: e.value, isSelected: e.key==selectedIndex,),
              ),
            ));
      }).toList(),
    );
  }
}
