import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_application/constants/text_constants.dart';

import '../../../widgets/alertDialogs/build_alert_dialog.dart';

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
      showCupertinoDialog(context: context, builder: (context)=>BuildAlertDialog(enteredTitle: cupertinoDialogTitle, enteredContent:cupertinoDialogContent ));
    }
  }


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

}
