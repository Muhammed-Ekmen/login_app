import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/data/fake_api.dart';
import '../../../constants/textStyle/textStyleConstant.dart';
import '../../../constants/texts/text_constants.dart';
import '../../../widgets/buildAppBar.dart';
import '../../../widgets/buildDivider.dart';
import '../../../widgets/buildExpansionTile.dart';
import '../../../widgets/cards/buildCard.dart';
import '../../../widgets/cards/buildImageNetworkCart.dart';
import '../controller/homepage_controller.dart';
import '../models/news_models/news_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomePageController controller = Get.put(HomePageController());
  
  get titleTextStyle => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BuildAppBar(
        enteredTitle:  Text(
          titleOfHomePage,
          style: titleTextStyle,
        ),
      ),
      body: controller.loading.value == true
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: countryCodes.keys.toList().length,
              itemBuilder: (BuildContext context, int index) {
                var items = controller.allCountryList[index] as NewsModel;
                return BuildExpansionTile(
                  title: countryCodes.keys.toList()[index],
                  imageURL: listOfSvgFlags[index],
                  children: expansionTileChildrenMethod(context, items),
                );
              },
            ),
    );
  }  
}

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

List<Widget> expansionTileChildrenMethod(BuildContext context, NewsModel newList) {
  var items = newList.articles!;
  return [
    SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return BuildCard(
            enteredChild: Column(
              children: [
                BuildNetWorkImageCart(
                    incomingImage: items[index].urlToImage!,
                    incomingHeight: MediaQuery.of(context).size.height / 6,
                    incomingWidht: MediaQuery.of(context).size.width),
                BuildDivider(enteredThickness: 5),
                Text(
                  items[index].title.toString(),
                  textAlign: TextAlign.center,
                  style: titleTextStyle,
                ),
              ],
            ),
          );
        },
      ),
    ),
  ];
}
