import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/image_with_shadow_widget.dart";

import "package:flutter/material.dart";

class IntroductionPage3Widget extends StatelessWidget {
  const IntroductionPage3Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(children: <Widget>[
      Positioned(
          right: size.width * 0.1,
          child: ImageWithShadowWidget(
              imageWidget: Image.asset(
                  "assets/images/pages/p0/introduction/duck_3.png",
                  scale: 2.5))),
      Positioned(
          bottom: size.height * 0.175,
          left: 0.0,
          right: 0.0,
          child: Column(children: [
            Text("3. 便期追蹤",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: AppTheme.zhFontFamily,
                    fontSize: 22.0,
                    letterSpacing: 1.5)),
            SizedBox(height: 5.0),
            Text(
                "咩話唔記得尋日有冇去大? 幫緊你 幫緊你\n 輸入簡單嘅資料就可以幫你每日記錄,仲可以幫你\n track住身體狀況, 記得睇埋醫師解釋,\n 身體健康最緊要!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: AppTheme.zhFontFamily,
                    fontSize: 14.0,
                    letterSpacing: 1.5))
          ])),
      Positioned(
          bottom: size.height * 0.085,
          right: size.width * 0.1,
          child: Transform.scale(
              scaleX: -1.0,
              child: ImageWithShadowWidget(
                  imageWidget: Image.asset(
                      "assets/images/pages/p0/introduction/small_duck_1.png",
                      scale: 15.0),
                  shadowOffset: const Offset(5.0, 5.0))))
    ]);
  }
}
