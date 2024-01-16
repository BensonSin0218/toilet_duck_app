import "package:toilet_duck/pages/p0/introduction/components/introduction_page_1_widget.dart";
import "package:toilet_duck/pages/p0/introduction/components/introduction_page_2_widget.dart";
import "package:toilet_duck/pages/p0/introduction/components/introduction_page_3_widget.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";

class IntroductionPageController extends GetxController {
  RxInt selectedPageIndex = 0.obs;

  PageController pageController = PageController();
  List<Widget> introductionPageWidgets = <Widget>[
    IntroductionPage1Widget(),
    IntroductionPage2Widget(),
    IntroductionPage3Widget()
  ];

  void nextPage() {
    selectedPageIndex.value == introductionPageWidgets.length - 1
        ? Get.offAllNamed("/sign_in")
        : pageController.nextPage(
            duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
}
