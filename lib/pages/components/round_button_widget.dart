import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget(
      {Key? key,
      required this.width,
      this.elevatedButtonItem,
      this.elevatedButtonElevation = 7.5,
      this.elevatedButtonBackgroundColor = AppTheme.greyBlue,
      this.elevatedButtonEnableFeedback = false,
      this.onPressed})
      : super(key: key);

  final double width;
  final Widget? elevatedButtonItem;
  final double elevatedButtonElevation;
  final Color elevatedButtonBackgroundColor;
  final bool elevatedButtonEnableFeedback;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: ElevatedButton(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: elevatedButtonItem ?? Container()),
            style: ElevatedButton.styleFrom(
                elevation: elevatedButtonElevation,
                backgroundColor: elevatedButtonBackgroundColor,
                shape: StadiumBorder(),
                enableFeedback: elevatedButtonEnableFeedback),
            onPressed: onPressed));
  }
}
