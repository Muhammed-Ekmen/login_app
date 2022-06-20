import 'package:flutter/material.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/data/constants/text_constants.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  BuildAppBar({Key? key, required this.enteredTitle, this.enteredActionList})
      : super(key: key);
  AppBar appBar = AppBar();
  String enteredTitle;
  List<Widget>? enteredActionList;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      actions: enteredActionList,
      titleTextStyle: titleTextStyle,
      elevation: 0,
      backgroundColor: appMainColor,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          enteredTitle,
          style: titleTextStyle,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
