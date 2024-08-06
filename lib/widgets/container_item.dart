import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/helper/colors.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            color: ColorStyles.containerColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
