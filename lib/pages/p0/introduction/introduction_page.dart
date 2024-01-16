import "components/page_indicator_widget.dart";
import "package:toilet_duck/controllers/p0/introduction/introduction_page_controller.dart";
import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/app_title_widget.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IntroductionPageController pageController =
        Get.find<IntroductionPageController>();

    return Scaffold(
        backgroundColor: AppTheme.creamy,
        body: SafeArea(
            child: Column(children: <Widget>[
          Center(
              child: AppTitleWidget(
                  fontFamily: AppTheme.engFontFamily,
                  fontSize: 24.0,
                  color: AppTheme.greyBlue,
                  shadowOffset: const Offset(0.0, 5.0))),
          Expanded(
              flex: 1,
              child: Stack(children: <Widget>[
                PageView(
                  controller: pageController.pageController,
                  onPageChanged: pageController.selectedPageIndex,
                  children: pageController.introductionPageWidgets,
                ),
                Positioned(
                    bottom: 25.0,
                    left: 0.0,
                    right: 0.0,
                    child: PageIndicatorWidget(
                        animationDuration: Duration(milliseconds: 500))),
                // Positioned(
                //   child: Image.asset(
                //     "assets/images/pages/p0/introduction/water_background.png"
                //   ),
                // )
              ]))
        ])));
  }
}
