import 'package:flutter/material.dart';
import 'package:login_application/data/constants/fake_api.dart';
import 'package:login_application/data/constants/text_constants.dart';
import 'package:get/get.dart';
import 'package:login_application/homepage/controller/homepage_controller.dart';
import '../../data/widgets/buildAppBar.dart';
import '../../data/widgets/buildDivider.dart';
import '../../data/widgets/buildExpansionTile.dart';
import '../../data/widgets/cards/buildCard.dart';
import '../../data/widgets/cards/buildImageNetworkCart.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController controller = Get.put(HomePageController());

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BuildAppBar(
        enteredTitle: const Text(
          titleOfHomePage,
          style: titleTextStyle,
        ),
      ),
      body: controller.loading.value == true
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: countryCodes.keys.toList().length,
              itemBuilder: (BuildContext context, int index) {
                return BuildExpansionTile(
                  title: countryCodes.keys.toList()[index],
                  imageURL: listOfSvgFlags[index],
                  children: expansionTileChildren(context),
                );
              },
            ),
    );
  }

  List<Widget> expansionTileChildren(BuildContext context) {
    return [
      SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: ListView.builder(
          itemCount: controller.newList.value.articles!.length,
          itemBuilder: (BuildContext context, int index) {
            var items = controller.newList.value.articles!;
            return BuildCard(
              enteredChild: Column(
                children: [
                  BuildNetWorkImageCart(
                      incomingImage: items[index].urlToImage!,
                      incomingHeight: MediaQuery.of(context).size.height / 6,
                      incomingWidht: MediaQuery.of(context).size.width),
                  BuildDivider(enteredThickness: 5),
                  Text(
                    controller.allNewsList[index].value.articles![index].title.toString(),
                    // items[index].title.toString(),
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
}













// NewsModel newList = NewsModel();

// bool loading = false;
// @override
// void initState() {
//   getNews();
//   super.initState();
// }

// void getNews() async {
//   setState(() {
//     loading = true;
//   });
//   newList = await getNewsData();
//   setState(() {
//     loading = false;
//   });
// }
