import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/expenses_item_model.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/expenses_item_details.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/expenses_item_header.dart';

class ActiveInActiveExpensesItem extends StatelessWidget {
  final bool isSelceted;
  final ExpensesItemModel expensesItemModel;
  const ActiveInActiveExpensesItem({
    super.key,
    required this.expensesItemModel,
    required this.isSelceted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        // borderRadius: BorderRadius.circular(12),
        color: isSelceted ? const Color(0xff4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xffF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: InActiveItemHeader(
              expensesItemModel: expensesItemModel,
              isSelceted: isSelceted,
            ),
          ),
          const SizedBox(height: 28),
          InActiveExpensesItemDetails(
            expensesItemModel: expensesItemModel,
            isSelceted: isSelceted,
          ),
        ],
      ),
    );
  }
}
