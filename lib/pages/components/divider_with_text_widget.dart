import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class DividerWithTextWidget extends StatelessWidget {
  const DividerWithTextWidget(
      {Key? key,
      required this.width,
      this.dividerColor = AppTheme.dividerColor,
      this.textWidget})
      : super(key: key);

  final double width;
  final Color dividerColor;
  final Widget? textWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(thickness: 1.0, color: dividerColor),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: textWidget),
          Expanded(
            child: Divider(thickness: 1.0, color: dividerColor),
          ),
        ],
      ),
    );
  }
}
