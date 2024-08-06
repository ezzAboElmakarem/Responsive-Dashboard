import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/expenses_item_model.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class InActiveExpensesItemDetails extends StatelessWidget {
  const InActiveExpensesItemDetails({
    super.key,
    required this.expensesItemModel,
    required this.isSelceted,
  });
  final bool isSelceted;

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesItemModel.title,
              style: isSelceted
                  ? AppStyles.styleSemiBold16(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesItemModel.date,
              style: isSelceted
                  ? AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensesItemModel.price,
              style: isSelceted
                  ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
