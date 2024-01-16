import "package:flutter/material.dart";

class PlatformSignInButtonWidget extends StatelessWidget {
  const PlatformSignInButtonWidget({
    Key? key,
    required this.imageWidget,
    this.onTap
  }) : super(key: key);

  final Image imageWidget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: imageWidget,
      onTap: onTap
    );
  }
}