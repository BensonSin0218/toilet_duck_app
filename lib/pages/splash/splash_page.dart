import "components/animated_app_title_widget.dart";
import "components/bottom_waves_widget.dart";
import "components/animated_message_boxes_widget/animated_message_boxes_widget.dart";
import "package:toilet_duck/controllers/splash/splash_page_animation_controller.dart";
import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/image_with_shadow_widget.dart";

import "dart:async";
import "package:flutter/material.dart";
import "package:get/get.dart";

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashPageAnimationController animationController =
      Get.find<SplashPageAnimationController>();

  @override
  void initState() {
    super.initState();

    // Timer: Message boxes animation
    for (int i = 0; i < 3; i++)
      Future.delayed(Duration(seconds: i + 1), () {
        animationController.showMessageBoxes[i] = true;
      });

    // Timer: App title animation
    Future.delayed(Duration(seconds: 3), () {
      animationController.showAppTitle.value = true;
    });

    // Timer: Navigation to welcome page
    Future.delayed(Duration(seconds: 5), () {
      Get.offAllNamed("/introduction");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.creamy,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedMessageBoxesWidget(
                  animationDuration: Duration(milliseconds: 500)),
              AnimatedAppTitleWidget(
                animationDuration: Duration(milliseconds: 500),
              ),
              ImageWithShadowWidget(
                imageWidget: Image.asset("assets/images/pages/splash/ducks.png",
                    scale: 1.5),
                shadowColor: Colors.black,
                shadowOffset: const Offset(0.0, 10.0),
              ),
              BottomWavesWidget()
            ]));
  }
}
