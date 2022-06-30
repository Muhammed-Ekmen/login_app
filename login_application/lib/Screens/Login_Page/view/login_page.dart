import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login_application/constants/base_urls.dart';
import 'package:login_application/constants/text_constants.dart';
import '../../../utilities/box_decorations.dart';
import '../../../utilities/color_constants.dart';
import '../../../widgets/build_appbar.dart';
import '../../../widgets/build_shadermask.dart';
import '../../../widgets/text_fields/build_text_form_field.dart';
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
            enteredColor: Colors.transparent,
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
          width: Get.width,
          height: Get.height / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildEmailTF(),
              Obx(
                () => buildPasswordTF(),
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.arrowRightFromBracket,
                  color: buttonTextColor,
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
      enteredHintText: passwordHintText,
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
      enteredHintText: emailHintText,
    );
  }

  Container appBarImageMethod() {
    return Container(
      alignment: Alignment.center,
      width: Get.width,
      height: Get.height / 20,
      child: SvgPicture.network(
        servisletLogo,
      ),
    );
  }
}
