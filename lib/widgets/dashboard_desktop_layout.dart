import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transction_history_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(height: 40,),
                          AllExpenses(),
                          SizedBox(height: 24,),
                          QuickInvoice()
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            MyCardsAndTransactionHistorySection(),

                           // MyCard(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(child: IncomeSection()),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
