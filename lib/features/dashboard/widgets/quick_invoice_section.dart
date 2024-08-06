import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/latest_transaction_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive_adaptive_app/helper/responsive_fontsize.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const EdgeInsets.only(left: 0, right: 0)
          : const EdgeInsets.only(left: 32, right: 24),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuickInvoiceHeader(),
              LatestTransactionSection(),
              Divider(
                height: 48,
                color: Color(0xffF1F1F1),
              ),
              QuickInvoiceForm(),
            ],
          ),
        ),
      ),
    );
  }
}
