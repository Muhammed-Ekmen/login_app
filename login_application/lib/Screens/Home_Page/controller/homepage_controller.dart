import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/news_models/news_model.dart';
import '../services/get_news.dart';

class HomePageController extends GetxController {
  RxList<NewsModel> allCountryList = <NewsModel>[].obs;

  RxBool loading = false.obs;

  @override
  void onInit() {
    getNews();
    super.onInit();
  }

  void getNews() async {
    loading.value = true;
    allCountryList.value = await getNewsDataList();
    loading.value = false;
    update();
    debugPrint(loading.value.toString());
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

