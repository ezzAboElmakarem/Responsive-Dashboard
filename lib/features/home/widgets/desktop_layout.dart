import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/home/widgets/drawer_view.dart';
import 'package:responsive_adaptive_app/features/home/widgets/tablet_layout.dart';
import 'package:responsive_adaptive_app/helper/colors.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          const Expanded(child: DrawerView()),
          const Expanded(flex: 3, child: TabletLayout()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorStyles.containerColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorStyles.listViewItemColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
