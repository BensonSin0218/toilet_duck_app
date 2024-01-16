import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/image_with_shadow_widget.dart";

import "package:flutter/material.dart";

class IntroductionPage2Widget extends StatelessWidget {
  const IntroductionPage2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(children: <Widget>[
      Positioned(
          right: size.width * 0.2,
          child: Transform.scale(
              scaleX: -1.0,
              child: ImageWithShadowWidget(
                  imageWidget: Image.asset(
                      "assets/images/pages/p0/introduction/small_duck_4.png",
                      scale: 15.0),
                  shadowOffset: const Offset(5.0, 5.0)))),
      Positioned(
          top: size.height * 0.115,
          left: size.width * 0.175,
          child: ImageWithShadowWidget(
              imageWidget: Image.asset(
                  "assets/images/pages/p0/introduction/small_duck_2.png",
                  scale: 12.5))),
      Positioned(
          top: size.height * 0.25,
          left: size.width * 0.05,
          child: ImageWithShadowWidget(
              imageWidget: Image.asset(
                  "assets/images/pages/p0/introduction/duck_2.png",
                  scale: 4.5))),
      Positioned(
          bottom: size.height * 0.2,
          left: 0.0,
          right: 0.0,
          child: Column(children: [
            Text("2. Toilet Talk",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: AppTheme.zhFontFamily,
                    fontSize: 22.0,
                    letterSpacing: 1.5)),
            SizedBox(height: 5.0),
            Text("去廁所無聊? 遇到廁所尷尬事? 怕羞搵唔到人傾?\n咁一於去\"廁所傾吓計\"偷偷話你知仲可以\n匿名開topic",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: AppTheme.zhFontFamily,
                    fontSize: 14.0,
                    letterSpacing: 1.5))
          ]))
    ]);
  }
}
