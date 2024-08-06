import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/home/widgets/desktop_layout.dart';
import 'package:responsive_adaptive_app/features/home/widgets/mobile_layout.dart';
import 'package:responsive_adaptive_app/features/home/widgets/tablet_layout.dart';
import 'package:responsive_adaptive_app/helper/adaptive_layout.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
