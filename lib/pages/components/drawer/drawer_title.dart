import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class DrawerTitle extends StatelessWidget {
  final String title;

  const DrawerTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
      child: SizedBox(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: AppTheme.zhFontFamily,
          ),
        ),
      ),
    );
  }
}
