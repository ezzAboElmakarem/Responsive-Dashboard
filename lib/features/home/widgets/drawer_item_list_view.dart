import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/home/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key});

  static List<DrawerItemModel> items = [
    DrawerItemModel(
      itemIcon: Icons.home,
      itemTitle: "D A S H B O A R D",
    ),
    DrawerItemModel(
      itemIcon: Icons.settings,
      itemTitle: "S e T T I N G S",
    ),
    DrawerItemModel(
      itemIcon: Icons.info,
      itemTitle: "A B O U T",
    ),
    DrawerItemModel(
      itemIcon: Icons.logout,
      itemTitle: "L O G O U T",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) =>
            DrawerItem(drawerItemModel: items[index]),
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        itemCount: items.length);
  }
}
