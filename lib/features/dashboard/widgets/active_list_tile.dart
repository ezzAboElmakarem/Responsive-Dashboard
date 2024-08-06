import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_app/features/dashboard/models/drawer_item_model.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class ActiveListTile extends StatelessWidget {
  const ActiveListTile({
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
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
