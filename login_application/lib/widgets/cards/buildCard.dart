import 'package:flutter/material.dart';
import '../../utilities/box_decorations.dart';

class BuildCard extends StatelessWidget {
  BuildCard({
    Key? key,
    this.enteredChild,
    this.enteredHeight,
    this.enteredWidth,
  }) : super(key: key);
  Widget? enteredChild;
  double? enteredHeight;
  double? enteredWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: enteredHeight ?? MediaQuery.of(context).size.height / 3,
      width: enteredWidth ?? MediaQuery.of(context).size.width / 1.2,
      decoration: buildCardBoxDecoration,
      child: enteredChild,
    );
  }
}
