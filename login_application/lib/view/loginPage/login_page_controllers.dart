import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/data/constants/color_constants.dart';

class Login_Page_Controller extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final email_key = GlobalKey<FormFieldState>();
  final password_key = GlobalKey<FormFieldState>();
  final formKey = GlobalKey<FormState>();

  RxBool showPassword = RxBool(false);

  changePasswordStatue() {
    showPassword = showPassword.value == true ? RxBool(false) : RxBool(true);
  }

  verificationLogIn() {
    if (email_key.currentState!.validate() == true &&
        password_key.currentState!.validate() == true) {
      emailController.clear();
      passwordController.clear();
      Get.toNamed("/homepage");
    } else {
      Get.snackbar(
        "It Can Not Be Empty!",
        "Please Check The Gaps...",
        backgroundColor: appMainColor.withOpacity(0.7),
      );
    }
  }
}
