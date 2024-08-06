import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/home/widgets/drawer_view.dart';
import 'package:responsive_adaptive_app/features/home/widgets/home_view_body.dart';
import 'package:responsive_adaptive_app/helper/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.backGroundColor,
      key: scaffoldkey,
      drawer: const DrawerView(),
      appBar: MediaQuery.of(context).size.width < 900
          ? AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                onPressed: () {
                  scaffoldkey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      body: const HomeViewBody(),
    );
  }
}
