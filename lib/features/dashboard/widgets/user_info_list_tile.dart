import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/user_info_model.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;

  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.userImage),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userInfoModel.userName,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userInfoModel.userEmail,
            style: AppStyles.styleRegular14(context),
          ),
        ),
      ),
    );
  }
}
