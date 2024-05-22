import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_item_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  static const items = [
    TransactionItemModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        price: r'$20,129',
        isWithdrawal: true),
    TransactionItemModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        price: r'$20,129',
        isWithdrawal: false),
    TransactionItemModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        price: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: //List.generate(items.length, (index) => TransactionItem(transactionItemModel: items[index],)),
      items.map((e) => TransactionItem(transactionItemModel: e)).toList(),
    );
  }
}
