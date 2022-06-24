import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_application/data/constants/boxDecorations/login_box_decoration.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/view/loginPage/controller/login_page_controllers.dart';
import 'package:login_application/widgets/buildAppBar.dart';
import 'package:get/get.dart';
import 'package:login_application/widgets/buildShaderMask.dart';
import 'package:login_application/widgets/buildTextFormField.dart';

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
            enteredTitle: appBarImageMethod(context),
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
                enteredController: controller.emailController,
                enteredHintText: "Please enter the Email Adress",
              ),
              Obx(
                () => BuildTextFormField(
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
                ),
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

  Container appBarImageMethod(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: SvgPicture.network(
        "https://servislet.com/img/logo.svg",
      ),
    );
  }
}
