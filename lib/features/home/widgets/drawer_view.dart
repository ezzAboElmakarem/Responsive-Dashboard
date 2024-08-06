import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/home/widgets/drawer_item_list_view.dart';
import 'package:responsive_adaptive_app/helper/colors.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      backgroundColor: ColorStyles.backGroundColor,
      child: const Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 50,
            ),
          ),
          DrawerItemListView(),
        ],
      ),
    );
  }
}
