import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/listview_container_item.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 20,
      itemBuilder: (context, index) => const ListViewContainerItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 12),
    );
  }
}
