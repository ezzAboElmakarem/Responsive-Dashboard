import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/transction_history_list_view.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TansctionHistoryHeader(),
          const SizedBox(
            height: 20,
          ),
          Text(
            '13 April 2022',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xFFAAAAAA)),
          ),
          const SizedBox(
            height: 16,
          ),
          const TransctionHistoryListView(),
        ],
      ),
    );
  }
}

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
