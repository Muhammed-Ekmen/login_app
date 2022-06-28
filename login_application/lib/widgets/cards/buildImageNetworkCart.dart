import 'package:flutter/material.dart';

import '../../utilities/color_constants.dart';

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
      margin: const EdgeInsets.all(10),
      height: incomingHeight,
      width: incomingWidht,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 5,color: appMainColor),
        color: incomingColor,
        shape: incomingShape ?? BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(incomingImage),
        ),
      ),
    );
  }
}
