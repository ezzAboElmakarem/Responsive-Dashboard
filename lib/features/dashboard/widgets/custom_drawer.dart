import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/user_info_model.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/drawer_items_list_view.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/inactive_list_tile.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/user_info_list_tile.dart';
import 'package:responsive_adaptive_app/utlis/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  userName: "Lekan Okeowo",
                  userEmail: "demo@gmail.com",
                  userImage: Assets.imagesAvatar1),
            ),
          ),
          const DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveListtile(
                  drawerItemModel: DrawerListtileItemModel(
                      image: Assets.imagesSetting, title: "Setting system"),
                ),
                InActiveListtile(
                  drawerItemModel: DrawerListtileItemModel(
                      image: Assets.imagesLogout, title: "Logout account"),
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
