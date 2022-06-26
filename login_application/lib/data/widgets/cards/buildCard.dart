import 'package:flutter/material.dart';
import 'package:login_application/data/constants/boxDecorations/build_card_box_decoration.dart';

class BuildCard extends StatelessWidget {
  BuildCard({Key? key, this.enteredChild}) : super(key: key);
  Widget? enteredChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: buildCardBoxDecoration,
      child: enteredChild,
    );
  }
}
