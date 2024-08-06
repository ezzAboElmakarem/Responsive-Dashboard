import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/my_card_deatils_section.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/transction_history.dart';

class CardAndTransactionHistorySection extends StatelessWidget {
  const CardAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          MyCardSection(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              height: 40,
              color: Color(0xffF1F1F1),
            ),
          ),
          TrasnctionHistory(),
        ],
      ),
    );
  }
}
