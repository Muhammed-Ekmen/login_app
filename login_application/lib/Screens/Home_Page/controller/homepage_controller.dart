import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/homepage/services/get_news.dart';
import '../models/news_models/news_model.dart';

class HomePageController extends GetxController {
  dynamic allCountryList = <Rx<NewsModel>>[].obs;

  RxBool loading = false.obs;

  @override
  void onInit() {
    getNews();
    super.onInit();
  }

  void getNews() async {
    loading.value = true;
    allCountryList=await getNewsDataList();
    loading.value = false;
    update();
    debugPrint(loading.value.toString());
  }

  // changeLoadingStatue() {
  //   loading = loading.value == true ? RxBool(false) : RxBool(true);
  // }
}