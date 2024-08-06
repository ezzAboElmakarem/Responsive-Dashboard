import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/all_expenses_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/card_and_transaction_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/income_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/quick_invoice_section.dart';

class MobileDashboardView extends StatelessWidget {
  const MobileDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesSection(),
          QuickInvoiceSection(),
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 24),
            child: CardAndTransactionHistorySection(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: IncomeSection(),
          ),
        ],
      ),
    );
  }
}
