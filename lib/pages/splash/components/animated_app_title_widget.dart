import "package:toilet_duck/controllers/splash/splash_page_animation_controller.dart";
import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/app_title_widget.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";

class AnimatedAppTitleWidget extends StatelessWidget {
  const AnimatedAppTitleWidget({Key? key, required this.animationDuration})
      : super(key: key);

  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    final SplashPageAnimationController animationController =
        Get.find<SplashPageAnimationController>();

    return Obx(() => AnimatedOpacity(
        duration: animationDuration,
        opacity: animationController.showAppTitle.value ? 1.0 : 0.0,
        child: AppTitleWidget(
            fontFamily: AppTheme.engFontFamily,
            fontSize: 55.0,
            color: AppTheme.greyBlue,
            shadowOffset: const Offset(0.0, 5.0))));
  }
}
