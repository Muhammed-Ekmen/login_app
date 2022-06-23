import 'package:flutter/material.dart';
import 'package:login_application/data/constants/text_constants.dart';
import 'package:login_application/view/homepage/viewOfHomePage/homepage_body.dart';
import 'package:login_application/view/homepage/controller/homepage_controller.dart';
import 'package:login_application/widgets/buildAppBar.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomePageController controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BuildAppBar(
        enteredTitle: const Text(titleOfHomePage,style: titleTextStyle,),
      ),
      body: const HomePageBody(),
    );
  }
}
