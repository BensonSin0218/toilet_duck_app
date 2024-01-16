import "package:toilet_duck/data/app_info.dart";
import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget(
      {Key? key,
      this.fontFamily = AppTheme.engFontFamily,
      this.fontSize = 24.0,
      this.color = AppTheme.greyBlue,
      this.shadowColor = AppTheme.appTitleShadow,
      this.shadowOffset = const Offset(0.0, 5.0),
      this.shadowBlurRadius = 6.0})
      : super(key: key);

  final String fontFamily;
  final double fontSize;
  final Color color;
  final Color shadowColor;
  final Offset shadowOffset;
  final double shadowBlurRadius;

  @override
  Widget build(BuildContext context) {
    return Text(AppInfo.appTitle,
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize,
            color: color,
            shadows: [
              Shadow(
                color: shadowColor,
                offset: shadowOffset,
                blurRadius: shadowBlurRadius,
              )
            ]));
  }
}
