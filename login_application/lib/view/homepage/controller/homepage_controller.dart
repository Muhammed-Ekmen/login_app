import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:login_application/view/homepage/models/news_model.dart';
import 'package:login_application/view/homepage/service/get_news.dart';

class HomePageController extends GetxController {
  // ignore: non_constant_identifier_names
  final find_size_key = GlobalKey<FormFieldState>();
  TextEditingController findSizeController = TextEditingController();

  Rx<NewsModel> newList = NewsModel().obs;

  RxBool loading = false.obs;

  @override
  void onInit() {
    getNews();
    getAllNews();
    super.onInit();
  }

  void getNews() async {
    loading.value = true;
    newList.value = await getNewsData(country: "us");
    loading.value = false;
    update();
  }

  changeLoadingStatue() {
    loading = loading.value == true ? RxBool(false) : RxBool(true);
  }


  ///Trial Statement
  RxList<Rx<NewsModel>> allNewsList=RxList<Rx<NewsModel>>();

  void getAllNews()async{
    List<String> countryCode=["tr","us","fr","de","gr","il","it","jp","nl","gb"];
    loading.value=true;
    for(var k in countryCode){
      newList.value=await getNewsData(country: k);
      allNewsList.add(newList);
    }
    loading.value=false;
  }
}
