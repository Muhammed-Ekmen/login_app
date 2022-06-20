import 'package:flutter/material.dart';
import 'package:login_application/view/loginPage/login_page_body.dart';
import 'package:login_application/widgets/buildAppBar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(enteredTitle: "Welcome"),
      body: const Login_Page_Body(),
    );
  }
}
