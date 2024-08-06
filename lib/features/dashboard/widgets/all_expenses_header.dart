import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20, top: 20),
      child: Row(
        children: [
          Text(
            "All Expenses",
            style: AppStyles.styleSemiBold20(context),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(
                  color: Color(0xffF1F1F1),
                ),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Monthly",
                  style: AppStyles.styleMedium16(context),
                ),
                const SizedBox(width: 18),
                Transform.rotate(
                  angle: -1.571,
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff064061),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
