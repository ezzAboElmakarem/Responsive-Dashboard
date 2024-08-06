import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/all_expenses_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/card_and_transaction_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/income_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/quick_invoice_section.dart';

class TabletDashboardView extends StatelessWidget {
  const TabletDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AllExpensesSection(),
                QuickInvoiceSection(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 34, right: 24, top: 24, bottom: 24),
                  child: CardAndTransactionHistorySection(),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 34, right: 24, bottom: 40),
                  child: IncomeSection(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
