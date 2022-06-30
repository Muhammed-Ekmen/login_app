import 'package:flutter/material.dart';
import '../../utilities/box_decorations.dart';

@immutable
class BuildCard extends StatelessWidget {
  const BuildCard({
    Key? key,
    this.enteredChild,
    this.enteredHeight,
    this.enteredWidth,
  }) : super(key: key);
  final Widget? enteredChild;
  final double? enteredHeight;
  final double? enteredWidth;
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
