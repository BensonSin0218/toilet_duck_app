import "package:toilet_duck/pages/components/platform_sign_in_button_widget.dart";
import "package:toilet_duck/controllers/other_platform_sign_methods_controller.dart";
import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/divider_with_text_widget.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";

class OtherPlatformSignMethodsWidget extends StatelessWidget {
  const OtherPlatformSignMethodsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OtherPlatformSignMethodsController platformController =
        Get.find<OtherPlatformSignMethodsController>();

    Size size = MediaQuery.of(context).size;
    double spacer = 10.0;

    return Column(children: <Widget>[
      DividerWithTextWidget(
          width: size.width * 0.8,
          textWidget: Text("或者",
              style: TextStyle(
                  fontFamily: AppTheme.zhFontFamily, color: AppTheme.blue))),
      SizedBox(height: spacer),
      Text(
        "以其他方式登陸",
        style: TextStyle(
            fontFamily: AppTheme.zhFontFamily,
            color: AppTheme.blue,
            letterSpacing: 1.5),
      ),
      SizedBox(
        height: spacer,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        for (int i = 0; i < platformController.otherSignInMethod.length; i++)
          PlatformSignInButtonWidget(
              imageWidget: Image.asset(
                  "assets/images/pages/p0/sign_in/${platformController.otherSignInMethod[i]}_logo.png",
                  scale: 12.5),
              onTap: () => print(platformController.otherSignInMethod[i]))
      ])
    ]);
  }
}
