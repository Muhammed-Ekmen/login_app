// ignore: file_names
import 'package:flutter/material.dart';

import '../constants/colors/color_constants.dart';
import '../constants/textStyle/textStyleConstant.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  BuildAppBar({Key? key, required this.enteredTitle, this.enteredActionList,this.enteredColor=appMainColor})
      : super(key: key);
  AppBar appBar = AppBar();
  Widget? enteredTitle;
  List<Widget>? enteredActionList;
  Color? enteredColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme:  IconThemeData(color: appTextFieldColor),
      actions: enteredActionList,
      titleTextStyle: titleTextStyle,
      elevation: 0,
      backgroundColor: enteredColor,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: enteredTitle,
      ),
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}