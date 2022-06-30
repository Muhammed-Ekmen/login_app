import 'package:flutter/material.dart';
import '../utilities/color_constants.dart';
import '../utilities/textstyle_constants.dart';

@immutable
class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuildAppBar(
      {Key? key,
      required this.enteredTitle,
      this.enteredActionList,
      this.enteredColor = appMainColor})
      : super(key: key);
  final Widget? enteredTitle;
  final List<Widget>? enteredActionList;
  final Color? enteredColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: appTextFieldColor),
      actions: enteredActionList,
      titleTextStyle: titleTextStyle,
      elevation: 0,
      backgroundColor: enteredColor ?? loginAppBarColor,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: enteredTitle,
      ),
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
