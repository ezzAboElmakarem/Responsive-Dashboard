import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/custom_list_tile.dart';
import 'package:responsive_adaptive_app/utlis/app_images.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerListtileItemModel> categoriesList = [
    DrawerListtileItemModel(
      image: Assets.imagesDashboard,
      title: "Dashboard",
    ),
    DrawerListtileItemModel(
      image: Assets.imagesTransaction,
      title: "My Transaction",
    ),
    DrawerListtileItemModel(
      image: Assets.imagesStatistics,
      title: "Statistics",
    ),
    DrawerListtileItemModel(
      image: Assets.imagesWallet,
      title: "Wallet Account",
    ),
    DrawerListtileItemModel(
      image: Assets.imagesInvestments,
      title: "My Investments",
    ),
  ];

  int activeInex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeInex != index) {
            setState(() {
              activeInex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CustomListTile(
            drawerItemModel: categoriesList[index],
            isActive: activeInex == index,
          ),
        ),
      ),
      itemCount: categoriesList.length,
    );
  }
}
