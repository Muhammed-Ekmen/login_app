import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/Screens/Login_Page/controller/login_page_controllers.dart';
import 'package:login_application/data/fake_api.dart';
import 'package:url_launcher/link.dart';
import '../../../utilities/textstyle_constants.dart';
import '../../../constants/text_constants.dart';
import '../../../widgets/build_appbar.dart';
import '../../../widgets/build_divider.dart';
import '../../../widgets/build_expansiontile.dart';
import '../../../widgets/cards/build_card.dart';
import '../../../widgets/cards/build_image_network_card.dart';
import '../controller/homepage_controller.dart';
import '../models/news_models/news_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomePageController controller = Get.put(HomePageController());
  get titleTextStyle => null;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.delete<LoginPageController>();
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: const BuildAppBar(
            enteredTitle: Text(
              titleOfHomePage,
            ),
          ),
          body: Obx(
            () => controller.loading.value == true
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: countryCodes.keys.toList().length,
                    itemBuilder: (BuildContext context, int index) {
                      NewsModel items = controller.allCountryList[index];
                      return BuildExpansionTile(
                        title: countryCodes.keys.toList()[index],
                        imageURL: listOfSvgFlags[index],
                        children: expansionTileChildrenMethod(context, items),
                      );
                    },
                  ),
          )),
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

List<Widget> expansionTileChildrenMethod(
    BuildContext context, NewsModel newList) {
  var items = newList.articles!;
  return [
    SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return BuildCard(
            enteredHeight: MediaQuery.of(context).size.height / 2.7,
            enteredChild: Column(
              children: [
                BuildNetWorkImageCart(
                    incomingImage: items[index].urlToImage!,
                    incomingHeight: MediaQuery.of(context).size.height / 6,
                    incomingWidht: MediaQuery.of(context).size.width),
                const BuildDivider(enteredThickness: 5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    items[index].title.toString(),
                    textAlign: TextAlign.center,
                    style: titleTextStyle,
                  ),
                ),
                Link(
                  uri: Uri.parse(items[index].url.toString()),
                  target: LinkTarget.self,
                  builder: (context, followLink) {
                    return TextButton(
                      onPressed: followLink,
                      child: Text(
                        "Haberi Okuyun".toUpperCase(),
                        style: textLinkTextStyle,
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    ),
  ];
}
