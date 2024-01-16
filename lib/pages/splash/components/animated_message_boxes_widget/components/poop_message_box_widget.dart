import 'package:toilet_duck/data/theme.dart';
import "package:toilet_duck/pages/components/image_with_shadow_widget.dart";

import "package:flutter/material.dart";

class PoopMessageBoxWidget extends StatelessWidget {
  const PoopMessageBoxWidget({Key? key, required this.i}) : super(key: key);

  final int i;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      i % 2 == 0 ? SizedBox(height: 50.0) : Container(),
      Stack(children: <Widget>[
        ImageWithShadowWidget(
            imageWidget: Image.asset(
                "assets/images/pages/splash/message_box_${i + 1}.png",
                scale: 1.75),
            shadowColor: Colors.black,
            shadowOffset: const Offset(0, 10)),
        Positioned(
            top: 15.0,
            left: 25.0,
            child: Row(children: <Widget>[
              Image.asset("assets/images/pages/splash/poop.png", scale: 5.0),
              SizedBox(width: 2.5),
              Column(children: [
                Text("${i + 1}",
                    style: TextStyle(
                        fontFamily: AppTheme.engFontFamily,
                        fontSize: 36,
                        color: Colors.white)),
                SizedBox(height: 7.5)
              ])
            ]))
      ])
    ]);
  }
}
