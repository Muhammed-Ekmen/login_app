import 'package:flutter/material.dart';
import 'package:login_application/view/homepage/viewOfHomePage/homepage_body.dart';
import 'package:login_application/view/homepage/controller/homepage_controller.dart';
import 'package:login_application/widgets/buildAppBar.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomePage_Controller controller = Get.put(HomePage_Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BuildAppBar(
        enteredTitle: const Text("HomePage"),
      ),
      body: HomePage_Body(),
    );
  }
}
