import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/data/constants/color_constants.dart';

class Login_Page_Controller extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool showPassword = RxBool(false);
  changePasswordStatue() {
    showPassword = showPassword.value == true ? RxBool(false) : RxBool(true);
  }

  verificationLogIn() {
    if (formKey.currentState!.validate() == true) {
      emailController.clear();
      passwordController.clear();
      Get.snackbar(
        "Saved",
        "Succesfully...",
        backgroundColor: appMainColor,
      );
    }
  }
}
