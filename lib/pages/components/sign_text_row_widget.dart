import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";

class SignTextRowWidget extends StatelessWidget {
  const SignTextRowWidget(
      {Key? key,
      required this.prefixText,
      required this.clickText,
      required this.getPageText})
      : super(key: key);

  final String prefixText;
  final String clickText;
  final String getPageText;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text(prefixText,
          style: TextStyle(
              fontFamily: AppTheme.zhFontFamily,
              color: AppTheme.blue,
              letterSpacing: 1.5)),
      GestureDetector(
          child: Text(clickText,
              style: TextStyle(
                  fontFamily: AppTheme.zhFontFamily,
                  color: Colors.transparent,
                  shadows: [
                    Shadow(
                        color: AppTheme.blue, offset: const Offset(0.0, -1.0))
                  ],
                  decoration: TextDecoration.underline,
                  decorationColor: AppTheme.blue,
                  decorationThickness: 4,
                  decorationStyle: TextDecorationStyle.wavy)),
          onTap: () => Get.offAllNamed(getPageText))
    ]);
  }
}
