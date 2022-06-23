import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:login_application/data/constants/boxDecorations/login_box_decoration.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/view/loginPage/controller/login_page_controllers.dart';
import 'package:login_application/widgets/buildTextFormField.dart';

class LoginPageBody extends GetView<LoginPageController> {
  const LoginPageBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: loginBoxDecoration,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildTextFormField(
                enteredFieldKey: controller.emailKey,
                enteredPrefixIcon: const Icon(
                  FontAwesomeIcons.envelope,
                  color: appMainColor,
                ),
                enteredBorderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                enteredController: controller.emailController,
                enteredHintText: "Please enter the Email Adress",
              ),
              BuildTextFormField(
                enteredFieldKey: controller.passwordKey,
                enteredPrefixIcon: const Icon(
                  FontAwesomeIcons.key,
                  color: Colors.black,
                ),
                enteredController: controller.passwordController,
                enteredHintText: "Please Enter Password",
              ),
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.arrowRightFromBracket,
                  color: Colors.white,
                ),
                onPressed: () {
                  controller.verificationLogIn(context);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
