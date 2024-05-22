import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dot_indicator.dart';
import 'package:responsive_dashboard/widgets/mycard_page_view.dart';

import '../utils/app_styles.dart';

class MyCarsSection extends StatefulWidget {
  const MyCarsSection({super.key});

  @override
  State<MyCarsSection> createState() => _MyCarsSectionState();
}

class _MyCarsSectionState extends State<MyCarsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {

    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
