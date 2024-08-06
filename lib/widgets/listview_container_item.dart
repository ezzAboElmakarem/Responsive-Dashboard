import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/helper/colors.dart';

class ListViewContainerItem extends StatelessWidget {
  const ListViewContainerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorStyles.listViewItemColor),
    );
  }
}
