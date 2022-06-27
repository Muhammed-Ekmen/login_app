import 'package:flutter/material.dart';
import 'package:login_application/data/widgets/buildAppBar.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(enteredTitle: const Text("Error Page")),
    );
  }
}
