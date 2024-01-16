import "package:flutter/material.dart";

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "404 Not Found!",
            style: TextStyle(
              fontSize: 24,
            )
          )
        )
      )
    );
  }
}