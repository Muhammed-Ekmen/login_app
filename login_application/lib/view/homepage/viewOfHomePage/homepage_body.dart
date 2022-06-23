import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';
import 'package:login_application/view/homepage/controller/homepage_controller.dart';
import 'package:login_application/view/homepage/service/get_news.dart';
import 'package:login_application/widgets/buildExpansionTile.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final HomePageController controller = Get.find();
  Map<String, String> countryCodes = {
    "Turkey": "tr",
    "The USA": "us",
    "France": "fr",
    "Germany": "de",
    "Greece": "gr",
    "Israel": "il",
    "Italy": "it",
    "Japan": "jp",
    "Netherland": "nl",
    "UK": "gb"
  };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countryCodes.keys.toList().length,
      itemBuilder: (BuildContext context, int index) {
        return BuildExpansionTile(
          incomingIndex: index,
          incomingCountryResponse: getNewsData(country: countryCodes.values.toList()[index]),
          incomingTitle: countryCodes.keys.toList()[index],
        );
      },
    );
  }
}

