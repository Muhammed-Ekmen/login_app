import 'package:flutter/material.dart';
import 'package:login_application/data/constants/color_constants.dart';

class BuildNetWorkImageCart extends StatelessWidget {
  BuildNetWorkImageCart({
    Key? key,
    required this.incomingImage,
    required this.incomingHeight,
    required this.incomingWidht,
    this.incomingColor=appMainColor,
    this.incomingShape,
  }) : super(key: key);
  double? incomingHeight;
  double? incomingWidht;
  Color? incomingColor;
  BoxShape? incomingShape;
  String incomingImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: incomingHeight,
      width: incomingWidht,
      decoration: BoxDecoration(
        color: incomingColor,
        shape: incomingShape ?? BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(incomingImage),
        ),
      ),
    );
  }
}
