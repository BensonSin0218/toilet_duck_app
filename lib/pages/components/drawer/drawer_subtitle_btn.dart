import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class DrawerSubtitleBtn extends StatelessWidget {
  final String btnName;
  final VoidCallback tap;

  const DrawerSubtitleBtn({
    Key? key,
    required this.btnName,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
      child: SizedBox(
        child: TextButton(
          style: TextButton.styleFrom(
            alignment: Alignment.centerLeft,
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          ),
          child: Text(
            btnName,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: AppTheme.zhFontFamily,
            ),
          ),
          onPressed: tap,
        ),
      ),
    );
  }
}
