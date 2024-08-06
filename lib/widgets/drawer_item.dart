import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/home/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModel.itemIcon),
      title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(drawerItemModel.itemTitle)),
    );
  }
}
