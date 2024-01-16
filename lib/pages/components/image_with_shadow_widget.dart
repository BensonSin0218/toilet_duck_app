import "dart:ui";
import "package:flutter/material.dart";

class ImageWithShadowWidget extends StatelessWidget {
  const ImageWithShadowWidget({
    Key? key,
    required this.imageWidget,
    this.shadowColor = Colors.black,
    this.shadowOpacity = 0.2,
    this.shadowOffset = const Offset(2, 2),
    this.sigmaX = 1.0,
    this.sigmaY = 1.0,
  }) : super(key: key);

  final Image imageWidget;
  final Color shadowColor;
  final double shadowOpacity;
  final Offset shadowOffset;
  final double sigmaX;
  final double sigmaY;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Transform.translate(
          offset: shadowOffset,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: sigmaX,
              sigmaY: sigmaY
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.0,
                  color: Colors.transparent,
                )
              ),
              child: Opacity(
                opacity: shadowOpacity,
                child:  ColorFiltered(
                  colorFilter: ColorFilter.mode(shadowColor, BlendMode.srcATop),
                  child: imageWidget,
                )
              )
            )
          )
        ),
        imageWidget
      ]
    );
  }
}