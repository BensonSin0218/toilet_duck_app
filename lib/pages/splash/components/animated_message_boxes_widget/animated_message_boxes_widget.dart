import "components/poop_message_box_widget.dart";
import "package:toilet_duck/controllers/splash/splash_page_animation_controller.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";

class AnimatedMessageBoxesWidget extends StatelessWidget {
  const AnimatedMessageBoxesWidget({Key? key, required this.animationDuration})
      : super(key: key);

  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    final SplashPageAnimationController animationController =
        Get.find<SplashPageAnimationController>();

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          for (int i = 0; i < 3; i++)
            Obx(() => AnimatedOpacity(
                duration: animationDuration,
                opacity: animationController.showMessageBoxes[i] ? 1.0 : 0.0,
                child: PoopMessageBoxWidget(i: i)))
        ]);
  }
}
