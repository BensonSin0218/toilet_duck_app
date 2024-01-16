import "package:toilet_duck/controllers/form_controller.dart";
import "package:toilet_duck/controllers/p0/sign_up/sign_up_page_controller.dart";
import "package:toilet_duck/data/theme.dart";
import "package:toilet_duck/pages/components/custom_text_form_field_widget.dart";
import "package:toilet_duck/pages/components/round_button_widget.dart";
import "package:toilet_duck/utils/form_validator.dart";

import "package:flutter/material.dart";
import "package:get/get.dart";

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FormController formController = Get.find<FormController>();
    final SignUpPageController pageController =
        Get.find<SignUpPageController>();

    Size size = MediaQuery.of(context).size;
    double spacer = 15.0;

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
                  pageController.signUpUser.value.username = value ?? "",
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
              textFormFieldOnChanged: (value) =>
                  pageController.signUpUser.value.userPassword = value ?? "",
              textFormFieldValidator: (value) => multiValidator([
                    requiredValidator(value),
                    minLengthValidator(value, 8),
                    specialCharacterValidator(value)
                  ]),
              bottomLineImageWidget: Image.asset(
                  "assets/images/pages/line_2.png",
                  fit: BoxFit.fitWidth))),
          Obx(() => CustomTextFormFieldWidget(
              width: size.width * 0.8,
              prefixTextFormFieldWidget: Text("確認密碼:",
                  style: TextStyle(
                      fontFamily: AppTheme.zhFontFamily,
                      fontSize: 16.0,
                      color: AppTheme.blue,
                      letterSpacing: 1.5)),
              textFormFieldHintText: "* 必填",
              textFormFieldShowSuffix: true,
              textFormFieldSuffixIconOnPressed: () => formController
                  .hideConfirmPassword
                  .value = !formController.hideConfirmPassword.value,
              textFormFieldHidePassword:
                  formController.hideConfirmPassword.value,
              textFormFieldValidator: (value) => multiValidator([
                    requiredValidator(value),
                    isMatchValidator(
                        value, pageController.signUpUser.value.userPassword)
                  ]),
              bottomLineImageWidget: Image.asset(
                  "assets/images/pages/line_2.png",
                  fit: BoxFit.fitWidth))),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            CustomTextFormFieldWidget(
                width: size.width * 0.4,
                prefixTextFormFieldWidget: Text("名字:",
                    style: TextStyle(
                        fontFamily: AppTheme.zhFontFamily,
                        fontSize: 16.0,
                        color: AppTheme.blue,
                        letterSpacing: 1.5)),
                textFormFieldHintText: "* 必填",
                textFormFieldOnChanged: (value) =>
                    pageController.signUpUser.value.firstName = value ?? "",
                textFormFieldValidator: (value) => requiredValidator(value),
                bottomLineImageWidget: Image.asset(
                    "assets/images/pages/line_1.png",
                    fit: BoxFit.fitWidth)),
            SizedBox(
              width: spacer / 3.0,
            ),
            CustomTextFormFieldWidget(
                width: size.width * 0.4,
                prefixTextFormFieldWidget: Text("姓名:",
                    style: TextStyle(
                        fontFamily: AppTheme.zhFontFamily,
                        fontSize: 16.0,
                        color: AppTheme.blue,
                        letterSpacing: 1.5)),
                textFormFieldHintText: "* 必填",
                textFormFieldOnChanged: (value) =>
                    pageController.signUpUser.value.lastName = value ?? "",
                textFormFieldValidator: (value) => requiredValidator(value),
                bottomLineImageWidget: Image.asset(
                    "assets/images/pages/line_1.png",
                    fit: BoxFit.fitWidth))
          ]),
          CustomTextFormFieldWidget(
              width: size.width * 0.8,
              prefixTextFormFieldWidget: Text("電子郵件:",
                  style: TextStyle(
                      fontFamily: AppTheme.zhFontFamily,
                      fontSize: 16.0,
                      color: AppTheme.blue,
                      letterSpacing: 1.5)),
              textFormFieldHintText: "* 必填",
              textFormFieldOnChanged: (value) =>
                  pageController.signUpUser.value.email = value ?? "",
              textFormFieldValidator: (value) => multiValidator(
                  [requiredValidator(value), isEmailValidator(value)]),
              bottomLineImageWidget: Image.asset(
                  "assets/images/pages/line_1.png",
                  fit: BoxFit.fitWidth)),
          CustomTextFormFieldWidget(
              width: size.width * 0.8,
              prefixTextFormFieldWidget: Text("電話:",
                  style: TextStyle(
                      fontFamily: AppTheme.zhFontFamily,
                      fontSize: 16.0,
                      color: AppTheme.blue,
                      letterSpacing: 1.5)),
              textFormFieldHintText: "* 必填",
              textFormFieldInputAction: TextInputAction.done,
              textFormFieldOnChanged: (value) =>
                  pageController.signUpUser.value.phone = value ?? "",
              textFormFieldValidator: (value) => multiValidator(
                  [requiredValidator(value), maxLengthValidator(value, 8)]),
              bottomLineImageWidget: Image.asset(
                  "assets/images/pages/line_1.png",
                  fit: BoxFit.fitWidth)),
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

                Get.snackbar(
                  "歡迎回來!",
                  pageController.signUpUser.value.username!,
                  colorText: Colors.green,
                );
                Get.offAllNamed("/home");
              }),
        ]));
  }
}
