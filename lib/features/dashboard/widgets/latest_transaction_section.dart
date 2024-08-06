import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/user_info_model.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/user_info_list_tile.dart';
import 'package:responsive_adaptive_app/utlis/app_images.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({
    super.key,
  });
  static List<UserInfoModel> items = [
    UserInfoModel(
        userName: 'Madrani Andi',
        userEmail: 'Josh Nunito@gmail.com',
        userImage: Assets.imagesAvatar3),
    UserInfoModel(
        userName: 'Madrani Andi',
        userEmail: 'Josh Nunito@gmail.com',
        userImage: Assets.imagesAvatar2),
    UserInfoModel(
        userName: 'Madrani Andi',
        userEmail: 'Josh Nunito@gmail.com',
        userImage: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleRegular16(context),
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: items
                .map(
                  (e) =>
                      IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
