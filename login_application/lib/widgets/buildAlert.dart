// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BuildAlertDialog extends StatelessWidget {
  BuildAlertDialog({
    Key? key,
    required this.enteredTitle,
    required this.enteredContent,
  }) : super(key: key);
  String enteredTitle;
  String enteredContent;
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(enteredTitle),
      content: Text(enteredContent),
    );
  }
}
