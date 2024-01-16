import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    Key? key,
    required this.width,
    this.prefixTextFormFieldWidget,
    this.textFormFieldPadding = const EdgeInsets.symmetric(horizontal: 10.0),
    this.textFormFieldHintText = "",
    this.textFormFieldHintTextFontSize = 16.0,
    this.textFormFieldShowSuffix = false,
    this.textFormFieldSuffixIconColor = AppTheme.lightGreyBlue,
    this.textFormFieldSuffixIconOnPressed,
    this.textFormFieldCursorColor = AppTheme.blue,
    this.textFormFieldInputAction = TextInputAction.next,
    this.textFormFieldMaxLines = 1,
    this.textFormFieldHidePassword = false,
    this.textFormFieldOnChanged,
    this.textFormFieldAutoValidateMode = AutovalidateMode.onUserInteraction,
    this.textFormFieldValidator,
    this.textFormFieldController,
    this.bottomLineImageWidget,
  }) : super(key: key);

  final double width;
  final Widget? prefixTextFormFieldWidget;
  final EdgeInsetsGeometry textFormFieldPadding;
  final String textFormFieldHintText;
  final double textFormFieldHintTextFontSize;
  final bool textFormFieldShowSuffix;
  final Color textFormFieldSuffixIconColor;
  final void Function()? textFormFieldSuffixIconOnPressed;
  final bool textFormFieldHidePassword;
  final Color textFormFieldCursorColor;
  final TextInputAction textFormFieldInputAction;
  final int textFormFieldMaxLines;
  final void Function(String?)? textFormFieldOnChanged;
  final AutovalidateMode textFormFieldAutoValidateMode;
  final String? Function(String?)? textFormFieldValidator;
  final TextEditingController? textFormFieldController;
  final Widget? bottomLineImageWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration: BoxDecoration(color: Colors.transparent),
        child: Column(children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            prefixTextFormFieldWidget ?? Container(),
            Flexible(
                child: Padding(
                    padding: textFormFieldPadding,
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: textFormFieldHintText,
                            hintStyle: TextStyle(
                                fontFamily: AppTheme.zhFontFamily,
                                fontSize: textFormFieldHintTextFontSize,
                                letterSpacing: 1.5),
                            suffixIcon: textFormFieldShowSuffix
                                ? IconButton(
                                    icon: Icon(
                                        textFormFieldHidePassword
                                            ? Icons.visibility_off_rounded
                                            : Icons.visibility_rounded,
                                        color: textFormFieldSuffixIconColor),
                                    onPressed: textFormFieldSuffixIconOnPressed)
                                : Icon(null)),
                        obscureText: textFormFieldHidePassword,
                        cursorColor: textFormFieldCursorColor,
                        style: TextStyle(letterSpacing: 1.5),
                        textInputAction: textFormFieldInputAction,
                        maxLines: textFormFieldMaxLines,
                        onChanged: textFormFieldOnChanged,
                        autovalidateMode: textFormFieldAutoValidateMode,
                        validator: textFormFieldValidator,
                        controller: textFormFieldController)))
          ]),
          bottomLineImageWidget ?? Container(),
        ]));
  }
}
