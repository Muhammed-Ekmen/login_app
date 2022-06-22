import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/widgets/buildAlert.dart';

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

  verificationLogIn(BuildContext context) {
    if (email_key.currentState!.validate() == true &&
        password_key.currentState!.validate() == true) {
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
