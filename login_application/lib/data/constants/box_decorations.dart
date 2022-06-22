import 'package:flutter/material.dart';

import 'color_constants.dart';

class BoxDecorations{
static BoxDecoration loginBoxDecoration=const BoxDecoration(
        color: appMainColor,
        borderRadius: 
            BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
      );
}
