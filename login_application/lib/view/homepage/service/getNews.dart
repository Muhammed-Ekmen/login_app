import 'package:dio/dio.dart';

getNewsData({String country="tr"}) async {
  try {
    var response = await Dio().get(
        "https://newsapi.org/v2/top-headlines?country=tr&apiKey=6a3efed478e14558ba4b1bdd0e391f54");
    var exaMap = response.data as Map;
    var toBeSent = exaMap["articles"];
    return toBeSent;
  } catch (e) {
    return Future.error(e);
  }
}
