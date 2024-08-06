import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/all_expenses_types.dart';
import 'package:responsive_adaptive_app/helper/responsive_fontsize.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({
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
        child: const Column(
          children: [
            AllExpensesHeader(),
            AllExpensesTypes(),
          ],
        ),
      ),
    );
  }
}
