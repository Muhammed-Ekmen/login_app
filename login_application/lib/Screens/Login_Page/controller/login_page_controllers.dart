import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/widgets/buildAlert.dart';

class LoginPageController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final emailKey = GlobalKey<FormFieldState>();
  final passwordKey = GlobalKey<FormFieldState>();

  RxBool showPassword = false.obs;

  changePasswordStatue() {
    showPassword.value = !(showPassword.value);
    update();
  }

  verificationLogIn(BuildContext context) {
    if (emailKey.currentState!.validate() == true &&
        passwordKey.currentState!.validate() == true) {
      emailController.clear();
      passwordController.clear();
      Get.toNamed("/homepage");
    } else {
      showCupertinoDialog(
          barrierDismissible: true,
          context: context,
          builder: (context) {
            return Theme(
              data: ThemeData.light(),
              child: BuildAlertDialog(
                enteredTitle: "It Can Not Be Empty!",
                enteredContent: "Please Check The Gaps...",
              ),
            );
          });
    }
  }
}
