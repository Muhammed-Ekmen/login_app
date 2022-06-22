import 'package:flutter/cupertino.dart';

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
