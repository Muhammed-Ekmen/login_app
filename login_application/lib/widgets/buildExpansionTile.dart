import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_application/data/constants/boxDecorations/expansion_tile_box_decoration.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/data/constants/fake_api.dart';
import 'package:login_application/widgets/buildImageCart.dart';

class BuildExpansionTile extends StatelessWidget {
  BuildExpansionTile({
    Key? key,
    required this.incomingTitle,
    required this.incomingIndex,
    required this.incomingCountryResponse,
  }) : super(key: key);
  String incomingTitle;
  int incomingIndex;
  Future<Object?>? incomingCountryResponse;
  @override
  Widget build(BuildContext context) {
    return futureBuilderMethod();
  }

  FutureBuilder<Object?> futureBuilderMethod() {
    return FutureBuilder(
    future: incomingCountryResponse,
    builder: (context, data) {
      if (data.hasError) {
        return Center(
          child: Text(data.error.toString()),
        );
      } else if (data.connectionState == ConnectionState.waiting) {
        return const CupertinoActivityIndicator();
      } else {
        var items = data.data as List;
        ///black cart with flag
        return blackCartWithFlag(context, items);
      }
    },
  );
  }

  Container blackCartWithFlag(BuildContext context, List<dynamic> items) {
   
  }
}

class BlackCartWithFlag extends StatelessWidget {
  const BlackCartWithFlag({ Key? key }) : super(key: key);
  final String imageURL;
  final String title;
  final 
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width / 25),
          decoration: expansionTileBoxDecoration,
          child: ExpansionTile(
            leading: SvgPicture.network(
              listOfSvgFlags[incomingIndex],
              height: MediaQuery.of(context).size.height / 30,
            ),
            title: Text(countryTitle),
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: expansionTileChildrenDecoration,
                child: Column(
                  children: [
                    BuildNetWorkImageCart(
                        incomingImage: items[0]["urlToImage"],
                        incomingHeight:
                            MediaQuery.of(context).size.height / 4,
                        incomingWidht: MediaQuery.of(context).size.width),
                    Text(
                      items[0]["source"]["name"].toString(),
                      style: const TextStyle(
                          fontSize: 16,
                          color: appMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(items[0]["title"].toString())
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
