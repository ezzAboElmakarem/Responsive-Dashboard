import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class InActiveListtile extends StatelessWidget {
  const InActiveListtile({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerListtileItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleRegular16(context),
        ),
      ),
    );
  }
}
