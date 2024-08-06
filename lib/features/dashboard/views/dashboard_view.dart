import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/desktop_dashboard_view.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/mobile_dashboard_view.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/tablet_dashboard_view.dart';
import 'package:responsive_adaptive_app/helper/adaptive_layout.dart';
import 'package:responsive_adaptive_app/helper/responsive_fontsize.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileDashboardView(),
          tabletLayout: (context) => const TabletDashboardView(),
          desktopLayout: (context) => const DesktopDashboardView()),
    );
  }
}
