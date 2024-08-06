import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/all_expenses_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/quick_invoice_section.dart';

class ExpensesAndQuickInvoiceSections extends StatelessWidget {
  const ExpensesAndQuickInvoiceSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesSection(),
          QuickInvoiceSection(),
        ],
      ),
    );
  }
}
