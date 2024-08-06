import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/home/widgets/items_list_view.dart';
import 'package:responsive_adaptive_app/widgets/container_item.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 14)),
        TabletHorizotalListView(),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        ItemsListView()
      ],
    );
  }
}

class TabletHorizotalListView extends StatelessWidget {
  const TabletHorizotalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            itemBuilder: (context, index) => const ContainerItem(),
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: 16),
      ),
    );
  }
}
