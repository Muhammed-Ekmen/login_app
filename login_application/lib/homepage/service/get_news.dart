import 'package:dio/dio.dart';
import '../models/news_model.dart';

List<String> countryCodes = [
  "tr",
  "us",
  "fr",
  "de",
  "gr",
  "il",
  "it",
  "jp",
  "nl",
  "gb"
];

Future<List<NewsModel>> getNewsDataList() async {
  try {
    List<NewsModel> allCountryNews = [];
    NewsModel newsList = NewsModel();
    for (var k in countryCodes) {
      var response = await Dio().get(
          "https://newsapi.org/v2/top-headlines?country=$k&apiKey=6a3efed478e14558ba4b1bdd0e391f54");
      if (response.statusCode == 200) {
        newsList = NewsModel.fromJson(response.data);
        allCountryNews.add(newsList);
      }
    }
    return allCountryNews;
  } catch (e) {
    return Future.error(e);
  }
}































// Future<NewsModel> getNewsData({String country = "tr"}) async {
//   try {
//     NewsModel newsList = NewsModel();
//     var response = await Dio().get(
//         "https://newsapi.org/v2/top-headlines?country=$country&apiKey=6a3efed478e14558ba4b1bdd0e391f54");
//     if (response.data != null) {
//       newsList = NewsModel.fromJson(response.data);
//       return newsList;
//     } else {
//       return NewsModel();
//     }
//   } catch (e) {
//     return NewsModel();
//   }
// }
