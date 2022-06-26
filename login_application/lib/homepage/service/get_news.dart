import 'package:dio/dio.dart';

import '../models/news_model.dart';

Future<NewsModel> getNewsData({String country = "tr"}) async {
  try {
    NewsModel newsList = NewsModel();
    var response = await Dio().get(
        "https://newsapi.org/v2/top-headlines?country=$country&apiKey=6a3efed478e14558ba4b1bdd0e391f54");
    if (response.data != null) {
      newsList = NewsModel.fromJson(response.data);
      return newsList;
    } else {
      return NewsModel();
    }
  } catch (e) {
    return NewsModel();
  }
}
