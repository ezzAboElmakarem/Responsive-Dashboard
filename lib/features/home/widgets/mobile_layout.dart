import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/home/widgets/items_grid_view.dart';
import 'package:responsive_adaptive_app/features/home/widgets/items_list_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          ItemsGridView(),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          ItemsListView()
        ],
      ),
    );
  }
}
