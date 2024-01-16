import "components/sign_up_form_widget.dart";
import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/app_title_widget.dart";
import "package:toilet_duck/pages/components/other_platform_sign_methods_widget.dart";
import "package:toilet_duck/pages/components/sign_text_row_widget.dart";

import "package:flutter/material.dart";

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double spacer = 15.0;

    return Scaffold(
        backgroundColor: AppTheme.creamy,
        body: SafeArea(
            child: Column(children: <Widget>[
          Center(child: AppTitleWidget()),
          SizedBox(height: spacer),
          Image.asset("assets/images/pages/p0/sign_up/sign_up_duck.png",
              scale: 5.0),
          SizedBox(height: spacer),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SignUpFormWidget(),
                        SizedBox(height: spacer),
                        SignTextRowWidget(
                            prefixText: "已經有賬戶? ",
                            clickText: "點擊此處登錄",
                            getPageText: "/sign_in"),
                        SizedBox(height: spacer),
                        OtherPlatformSignMethodsWidget()
                      ])))
        ])));
  }
}
