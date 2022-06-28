import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../utilities/box_decorations.dart';
import '../../../utilities/color_constants.dart';
import '../../../widgets/buildAppBar.dart';
import '../../../widgets/buildShaderMask.dart';
import '../../../widgets/buildTextFormField.dart';
import '../controller/login_page_controllers.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final LoginPageController controller = Get.put(LoginPageController());
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BuildShaderMask(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: BuildAppBar(
            enteredColor: loginAppBarColor,
            enteredTitle: appBarImageMethod(),
          ),
          body: loginBodyMethod(context),
        ),
      ],
    );
  }

  Column loginBodyMethod(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: loginBoxDecoration,
          width:Get.width,
          height:Get.height / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildEmailTF(),
              Obx(
                () => buildPasswordTF(),
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

  BuildTextFormField buildPasswordTF() {
    return BuildTextFormField(
                enteredFieldKey: controller.passwordKey,
                enteredPrefixIcon: const Icon(
                  FontAwesomeIcons.key,
                  color: Colors.black,
                ),
                enteredController: controller.passwordController,
                obscure: controller.showPassword.value,
                enteredHintText: "Please Enter Password",
                enteredSuffixIcon: IconButton(
                  icon: controller.showPassword.value
                      ? const Icon(
                          FontAwesomeIcons.eye,
                          color: appMainColor,
                        )
                      : const Icon(
                          FontAwesomeIcons.eyeSlash,
                          color: appMainColor,
                        ),
                  onPressed: () {
                    controller.changePasswordStatue();
                    debugPrint(controller.showPassword.value.toString());
                  },
                ),
              );
  }

  BuildTextFormField buildEmailTF() {
    return BuildTextFormField(
              enteredFieldKey: controller.emailKey,
              enteredPrefixIcon: const Icon(
                FontAwesomeIcons.envelope,
                color: appMainColor,
              ),
              enteredController: controller.emailController,
              enteredHintText: "Please enter the Email Adress",
            );
  }

  Container appBarImageMethod() {
    return Container(
      alignment: Alignment.center,
      width:Get.width,
      height: 50,
      child: SvgPicture.network(
        "https://servislet.com/img/logo.svg",
      ),
    );
  }
}
