import "package:flutter/material.dart";

class DrawerOption extends StatelessWidget {
  final int ratio;
  final String iconBtnImage;

  const DrawerOption({
    Key? key,
    required this.ratio,
    required this.iconBtnImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: ratio,
      child: IconButton(
        icon: Image.asset(iconBtnImage),
        iconSize: 40.0,
        onPressed: (){},
      ),
    );
  }
}