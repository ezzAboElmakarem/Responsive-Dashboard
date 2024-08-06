import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/custom_indicator.dart';
import 'package:responsive_adaptive_app/features/dashboard/widgets/my_card_page_view.dart';
import 'package:responsive_adaptive_app/utlis/app_styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            "My card",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 19),
        DotsList(currentPageIndex: currentPageIndex)
      ],
    );
  }
}

class DotsList extends StatelessWidget {
  const DotsList({
    super.key,
    required this.currentPageIndex,
  });

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child:
                      CustomDotIndicator(isActive: currentPageIndex == index),
                )),
      ),
    );
  }
}
