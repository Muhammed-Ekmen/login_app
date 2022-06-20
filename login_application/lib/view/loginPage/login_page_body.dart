import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/view/loginPage/login_page_controllers.dart';
import 'package:login_application/widgets/buildContainer.dart';
import 'package:login_application/widgets/buildTextFormField.dart';

class Login_Page_Body extends GetView<Login_Page_Controller> {
  const Login_Page_Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BuildContainer(
            enteredWidht: MediaQuery.of(context).size.width,
            enteredHeight: MediaQuery.of(context).size.height / 3,
            enteredChild: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BuildTextFormField(
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
                    controller.verificationLogIn();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
