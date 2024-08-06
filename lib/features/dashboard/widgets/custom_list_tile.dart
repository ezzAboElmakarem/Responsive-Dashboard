import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/active_list_tile.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/inactive_list_tile.dart';

class CustomListTile extends StatelessWidget {
  final DrawerListtileItemModel drawerItemModel;
  final bool isActive;
  const CustomListTile(
      {super.key, required this.drawerItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveListTile(drawerItemModel: drawerItemModel)
        : InActiveListtile(drawerItemModel: drawerItemModel);
  }
}
