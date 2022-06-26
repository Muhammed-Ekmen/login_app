import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_application/loginPage/controller/login_page_controllers.dart';
import 'package:flutter/material.dart';

import '../../data/widgets/buildAlert.dart';

final LoginPageController controller = Get.find();

verificationLogIn(BuildContext context) {
  if (controller.emailKey.currentState!.validate() == true &&
      controller.passwordKey.currentState!.validate() == true) {
    controller.emailController.clear();
    controller.passwordController.clear();
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
