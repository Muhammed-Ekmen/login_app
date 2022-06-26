import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/widgets/buildAlert.dart';

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
}
