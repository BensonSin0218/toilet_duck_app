import "package:toilet_duck/pages/components/image_with_shadow_widget.dart";

import "package:flutter/material.dart";

class BottomWavesWidget extends StatelessWidget {
  const BottomWavesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int numberOfWaves = (size.width / 100).ceil();

    return SizedBox(
        height: size.height * 0.15,
        width: size.width,
        child: Stack(children: <Widget>[
          for (int i = 0; i < numberOfWaves; i++)
            Positioned(
                left: (size.width / 3.0 - 10.0) * i,
                child: ImageWithShadowWidget(
                    imageWidget: Image.asset(
                        "assets/images/pages/splash/wave.png",
                        fit: BoxFit.fitWidth,
                        width: size.width / 3.0),
                    shadowColor: Colors.black))
        ]));
  }
}
