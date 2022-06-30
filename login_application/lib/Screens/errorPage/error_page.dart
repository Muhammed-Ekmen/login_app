import 'package:flutter/material.dart';
import 'package:login_application/constants/text_constants.dart';
import '../../widgets/build_appbar.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BuildAppBar(enteredTitle: Text(titleOfErrorPage)),
    );
  }
}
