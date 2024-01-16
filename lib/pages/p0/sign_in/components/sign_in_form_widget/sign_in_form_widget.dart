import "components/forgot_password_button_widget.dart";
import "package:toilet_duck/controllers/form_controller.dart";
import "package:toilet_duck/controllers/p0/sign_in/sign_in_page_controller.dart";
import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/custom_text_form_field_widget.dart";
import "package:toilet_duck/pages/components/round_button_widget.dart";
import 'package:toilet_duck/utils/form_validator.dart';

import "package:flutter/material.dart";
import "package:get/get.dart";

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FormController formController = Get.find<FormController>();
    final SignInPageController pageController =
        Get.find<SignInPageController>();

    Size size = MediaQuery.of(context).size;
    double spacer = 10.0;

    return Form(
        key: formController.formKey,
        child: Column(children: <Widget>[
          CustomTextFormFieldWidget(
              width: size.width * 0.8,
              prefixTextFormFieldWidget: Text("用戶名:",
                  style: TextStyle(
                      fontFamily: AppTheme.zhFontFamily,
                      fontSize: 16.0,
                      color: AppTheme.blue,
                      letterSpacing: 1.5)),
              textFormFieldHintText: "* 必填",
              textFormFieldOnChanged: (value) =>
                  pageController.username.value = value ?? "",
              textFormFieldValidator: (value) => requiredValidator(value),
              bottomLineImageWidget: Image.asset(
                  "assets/images/pages/line_1.png",
                  fit: BoxFit.fitWidth)),
          Obx(() => CustomTextFormFieldWidget(
              width: size.width * 0.8,
              prefixTextFormFieldWidget: Text("密碼:",
                  style: TextStyle(
                      fontFamily: AppTheme.zhFontFamily,
                      fontSize: 16.0,
                      color: AppTheme.blue,
                      letterSpacing: 1.5)),
              textFormFieldHintText: "* 必填",
              textFormFieldShowSuffix: true,
              textFormFieldSuffixIconOnPressed: () => formController
                  .hidePassword.value = !formController.hidePassword.value,
              textFormFieldHidePassword: formController.hidePassword.value,
              textFormFieldInputAction: TextInputAction.done,
              textFormFieldOnChanged: (value) =>
                  pageController.userPassword.value = value ?? "",
              textFormFieldValidator: (value) => requiredValidator(value),
              bottomLineImageWidget: Image.asset(
                  "assets/images/pages/line_2.png",
                  fit: BoxFit.fitWidth))),
          ForgotPasswordButtonWidget(
              width: size.width * 0.8, onTap: () => print("Forgot password ?")),
          SizedBox(height: spacer),
          RoundButtonWidget(
              width: size.width * 0.75,
              elevatedButtonItem: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset("assets/images/pages/triangle.png"),
                    Center(
                        child: Text("登陸廁所鴨星球",
                            style: TextStyle(
                                fontFamily: AppTheme.zhFontFamily,
                                fontSize: 20.0,
                                letterSpacing: 1.5))),
                    Transform.scale(
                        scaleX: -1.0,
                        child: Image.asset("assets/images/pages/triangle.png"))
                  ]),
              onPressed: () {
                if (!formController.isAbleToSubmitForm()) {
                  Get.snackbar("有一點問題...", "", colorText: AppTheme.red);
                  return;
                }

                Get.snackbar("歡迎回來!", pageController.username.value,
                    colorText: Colors.green);
                Get.offAllNamed("/home");
              }),
          SizedBox(
            height: spacer,
          ),
          RoundButtonWidget(
              width: size.width * 0.6,
              elevatedButtonItem: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset("assets/images/pages/triangle.png"),
                    Center(
                        child: Text("以訪客身份進入",
                            style: TextStyle(
                                fontFamily: AppTheme.zhFontFamily,
                                fontSize: 16.0,
                                letterSpacing: 1.5))),
                    Transform.scale(
                        scaleX: -1.0,
                        child: Image.asset("assets/images/pages/triangle.png"))
                  ]),
              elevatedButtonBackgroundColor: AppTheme.lightGreyBlue,
              onPressed: () {
                Get.snackbar("歡迎回來!", "訪客", colorText: Colors.green);
                Get.offAllNamed("/home");
              })
        ]));
  }
}
