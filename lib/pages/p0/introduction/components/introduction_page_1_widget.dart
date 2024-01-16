import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/image_with_shadow_widget.dart";

import "package:flutter/material.dart";

class IntroductionPage1Widget extends StatelessWidget {
  const IntroductionPage1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(children: <Widget>[
      Positioned(
          right: size.width * 0.1,
          child: ImageWithShadowWidget(
              imageWidget: Image.asset(
                  "assets/images/pages/p0/introduction/small_duck_1.png",
                  scale: 15.0),
              shadowColor: Colors.black,
              shadowOffset: const Offset(-5.0, 5.0))),
      Positioned(
          top: size.height * 0.1,
          left: size.width * 0.05,
          child: Transform.scale(
              scaleX: -1.0,
              child: ImageWithShadowWidget(
                  imageWidget: Image.asset(
                      "assets/images/pages/p0/introduction/small_duck_2.png",
                      scale: 15.0),
                  shadowColor: Colors.black,
                  shadowOffset: const Offset(5.0, 5.0)))),
      Positioned(
          top: size.height * 0.15,
          left: size.width * 0.05,
          child: ImageWithShadowWidget(
              imageWidget: Image.asset(
                  "assets/images/pages/p0/introduction/duck_1.png",
                  scale: 1.15),
              shadowColor: Colors.black,
              shadowOffset: const Offset(-5.0, 5.0))),
      Positioned(
          bottom: size.height * 0.25,
          left: 0.0,
          right: 0.0,
          child: Column(children: [
            Text("1. 尋找附近廁所",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: AppTheme.zhFontFamily,
                    fontSize: 22.0,
                    letterSpacing: 1.5)),
            SizedBox(height: 5.0),
            Text("快速尋找最近的廁所,人有三急都無有怕啦!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: AppTheme.zhFontFamily,
                    fontSize: 14.0,
                    letterSpacing: 1.5))
          ])),
      Positioned(
          bottom: size.height * 0.1,
          left: size.width * 0.1,
          child: Transform.scale(
              scaleX: -1.0,
              child: ImageWithShadowWidget(
                  imageWidget: Image.asset(
                      "assets/images/pages/p0/introduction/small_duck_3.png",
                      scale: 12.5),
                  shadowColor: Colors.black,
                  shadowOffset: const Offset(5.0, 5.0))))
    ]);
  }
}
