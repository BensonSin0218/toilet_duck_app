import "package:toilet_duck/controllers/p0/introduction/introduction_page_controller.dart";
import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({Key? key, required this.animationDuration})
      : super(key: key);

  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    final IntroductionPageController pageController =
        Get.find<IntroductionPageController>();

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Obx(() => GestureDetector(
              child: AnimatedOpacity(
                duration: animationDuration,
                opacity: pageController.selectedPageIndex.value !=
                        pageController.introductionPageWidgets.length - 1
                    ? 1.0
                    : 0.0,
                child: Text("跳過",
                    style: TextStyle(
                        fontFamily: AppTheme.zhFontFamily, letterSpacing: 1.5)),
              ),
              onTap: () => pageController.selectedPageIndex.value !=
                      pageController.introductionPageWidgets.length - 1
                  ? Get.offAllNamed("/sign_in")
                  : null)),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  pageController.introductionPageWidgets.length,
                  (index) => Obx(() => AnimatedContainer(
                      duration: animationDuration,
                      curve: Curves.fastOutSlowIn,
                      height: 12.0,
                      width: pageController.selectedPageIndex.value == index
                          ? 24.0
                          : 12.0,
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: pageController.selectedPageIndex.value == index
                              ? AppTheme.blue
                              : AppTheme.darkGrey))))),
          Obx(() => GestureDetector(
                child: Stack(children: <Widget>[
                  AnimatedOpacity(
                    duration: animationDuration,
                    opacity: pageController.selectedPageIndex.value ==
                            pageController.introductionPageWidgets.length - 1
                        ? 1.0
                        : 0.0,
                    child: Text("開始",
                        style: TextStyle(
                            fontFamily: AppTheme.zhFontFamily,
                            letterSpacing: 1.5)),
                  ),
                  AnimatedOpacity(
                    duration: animationDuration,
                    opacity: pageController.selectedPageIndex.value !=
                            pageController.introductionPageWidgets.length - 1
                        ? 1.0
                        : 0.0,
                    child: Text("下頁",
                        style: TextStyle(
                            fontFamily: AppTheme.zhFontFamily,
                            letterSpacing: 1.5)),
                  )
                ]),
                onTap: () => pageController.nextPage(),
              ))
        ]);
  }
}
