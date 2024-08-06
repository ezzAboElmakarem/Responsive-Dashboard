import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widgets/container_item.dart';

class ItemsGridView extends StatelessWidget {
  const ItemsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 14,
      ),
      itemBuilder: (context, index) => const ContainerItem(),
    );
  }
}
