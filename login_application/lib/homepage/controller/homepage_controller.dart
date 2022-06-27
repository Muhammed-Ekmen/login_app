import 'package:get/get.dart';
import 'package:login_application/homepage/service/get_news.dart';
import '../models/news_model.dart';

class HomePageController extends GetxController {
  // ignore: non_constant_identifier_names
  
  // To Will Delete
  // Rx<NewsModel> newList = NewsModel().obs;

  /// list Trial
  dynamic allCountryList = <Rx<NewsModel>>[].obs;

  RxBool loading = false.obs;

  @override
  void onInit() {
    getNews();
    super.onInit();
  }

  void getNews() async {
    loading.value = true;
    // newList.value = await getNewsData();
    allCountryList=await getNewsDataList();
    loading.value = false;
    update();
  }

  changeLoadingStatue() {
    loading = loading.value == true ? RxBool(false) : RxBool(true);
  }
}
