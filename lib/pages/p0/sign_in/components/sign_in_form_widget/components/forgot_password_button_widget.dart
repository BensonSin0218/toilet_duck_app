import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class ForgotPasswordButtonWidget extends StatelessWidget {
  const ForgotPasswordButtonWidget(
      {Key? key, required this.width, this.fontSize = 12.0, this.onTap})
      : super(key: key);

  final double width;
  final double fontSize;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            width: width,
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("忘記密碼?",
                    style: TextStyle(
                        fontFamily: AppTheme.zhFontFamily,
                        fontSize: fontSize,
                        color: Colors.transparent,
                        shadows: [
                          Shadow(
                              color: AppTheme.blue,
                              offset: const Offset(0.0, -2.5))
                        ],
                        decoration: TextDecoration.underline,
                        decorationColor: AppTheme.blue,
                        decorationThickness: 4,
                        decorationStyle: TextDecorationStyle.wavy)))),
        onTap: onTap);
  }
}
