import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class DrawerBigDuckBtn extends StatelessWidget {
  const DrawerBigDuckBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.0,
      left: -15.0,
      child: SizedBox(
        width: 130.0,
        height: 300.0,
        child: Stack(
          alignment: Alignment.centerLeft,
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.zero,
              width: 120.0,
              height: 300.0,
              child: IconButton(
                icon: Image.asset(
                    "assets/images/pages/p1/home/side_menu/big_duck.png"),
                onPressed: () {},
              ),
            ),
            Positioned(
              bottom: 80.0,
              right: 0.0,
              child: Text(
                "按我返回主頁",
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: AppTheme.zhFontFamily,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
