import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utilities/color_constants.dart';

@immutable
class BuildExpansionTile extends StatelessWidget {
  const BuildExpansionTile(
      {Key? key, required this.title, this.children, required this.imageURL})
      : super(key: key);
  final String title;
  final List<Widget>? children;
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: appMainColor,
      child: ExpansionTile(
        leading: SvgPicture.network(
          imageURL,
          height: MediaQuery.of(context).size.height / 30,
        ),
        title: Text(title),
        children: children ?? [],
      ),
    );
  }
}
