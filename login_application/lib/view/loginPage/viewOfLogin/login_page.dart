import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/view/loginPage/controller/login_page_controllers.dart';
import 'package:login_application/view/loginPage/viewOfLogin/login_page_body.dart';
import 'package:login_application/widgets/buildAppBar.dart';
import 'package:get/get.dart';
import 'package:login_application/widgets/buildShaderMask.dart';

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
            enteredTitle: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: SvgPicture.network(
                "https://servislet.com/img/logo.svg",
              ),
            ),
          ),
          body: const LoginPageBody(),
        ),
      ],
    );
  }
}
