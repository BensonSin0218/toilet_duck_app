import "package:flutter/material.dart";
import "package:get/get.dart";

class FormController extends GetxController {
  final formKey = GlobalKey<FormState>();

  RxBool hidePassword = true.obs;
  RxBool hideConfirmPassword = true.obs;

  bool isAbleToSubmitForm() => formKey.currentState!.validate();
}