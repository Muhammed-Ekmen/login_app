import 'package:flutter/material.dart';
import 'package:login_application/data/constants/color_constants.dart';

class BuildContainer extends StatelessWidget {
  BuildContainer({
    Key? key,
    required this.enteredWidht,
    required this.enteredHeight,
    this.enteredBorderRadius,
    this.enteredChild,
    this.enteredColor = appMainColor,
  }) : super(key: key);
  double enteredWidht;
  double enteredHeight;
  Color enteredColor;
  BorderRadiusGeometry? enteredBorderRadius;
  Widget? enteredChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: enteredWidht,
      height: enteredHeight,
      decoration: BoxDecoration(
        color: appMainColor,
        borderRadius: enteredBorderRadius ??
            const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
      ),
      child: enteredChild,
    );
  }
}
