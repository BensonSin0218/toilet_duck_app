import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class HomeAppBar extends StatelessWidget {
  final String barTitle;

  const HomeAppBar({
    Key? key,
    required this.scaffoldKey,
    required this.barTitle,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0), //appBar padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.menu_rounded,
                size: 28.0,
                color: AppTheme.greyBlue,
              ),
              onPressed: (() => scaffoldKey.currentState?.openDrawer()),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 2,
            child: Text(
              barTitle,
              style: TextStyle(
                fontSize: 20.0,
                color: AppTheme.greyBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
