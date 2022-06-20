import 'package:flutter/material.dart';
import 'package:login_application/data/constants/text_constants.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  BuildAppBar({Key? key, required this.enteredTitle, this.enteredActionList})
      : super(key: key);
  AppBar appBar = AppBar();
  Widget? enteredTitle;
  List<Widget>? enteredActionList;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      actions: enteredActionList,
      titleTextStyle: titleTextStyle,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: enteredTitle,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
