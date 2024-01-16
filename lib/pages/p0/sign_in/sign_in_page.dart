import "components/sign_in_form_widget/sign_in_form_widget.dart";
import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/app_title_widget.dart";
import "package:toilet_duck/pages/components/other_platform_sign_methods_widget.dart";
import "package:toilet_duck/pages/components/sign_text_row_widget.dart";

import "package:flutter/material.dart";

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double spacer = 15.0;

    return Scaffold(
        backgroundColor: AppTheme.creamy,
        body: SafeArea(
            child: Column(children: <Widget>[
          Center(child: AppTitleWidget()),
          SizedBox(height: spacer),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                            "assets/images/pages/p0/sign_in/sign_in_duck.png",
                            scale: 10.0),
                        SizedBox(height: spacer),
                        SignInFormWidget(),
                        SizedBox(height: spacer * 2.0),
                        SignTextRowWidget(
                            prefixText: "沒有帳戶？",
                            clickText: "點擊此處註冊",
                            getPageText: "/sign_up"),
                        SizedBox(height: spacer),
                        OtherPlatformSignMethodsWidget()
                      ])))
        ])));
  }
}
