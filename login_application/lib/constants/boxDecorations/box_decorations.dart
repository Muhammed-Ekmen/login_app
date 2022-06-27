import 'package:flutter/material.dart';

import '../colors/color_constants.dart';

BoxDecoration expansionTileBoxDecoration = BoxDecoration(
  color: appMainColor,
  borderRadius: BorderRadius.circular(10),
);

BoxDecoration expansionTileChildrenDecoration = BoxDecoration(
  color: Colors.grey.shade800,
  borderRadius: BorderRadius.circular(10),
);

BoxDecoration buildCardBoxDecoration = BoxDecoration(
  color: appCardColor,
  borderRadius: BorderRadius.circular(10),
);


BoxDecoration loginBoxDecoration = const BoxDecoration(
  color: appMainColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  ),
);
