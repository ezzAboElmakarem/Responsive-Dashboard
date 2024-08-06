import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/card_and_transaction_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/expenses_and_quick_invoice_sections.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/income_section.dart';

class DesktopDashboardView extends StatelessWidget {
  const DesktopDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: ExpensesAndQuickInvoiceSections(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40, right: 32),
                        child: Column(
                          children: [
                            CardAndTransactionHistorySection(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(
                              child: IncomeSection(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
