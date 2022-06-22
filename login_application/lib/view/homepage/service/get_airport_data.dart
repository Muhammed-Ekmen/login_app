import 'package:dio/dio.dart';

getAirlineData({dynamic enteredSize=1})async{
  try{
    var response=await Dio().get("https://api.instantwebtools.net/v1/passenger?page=2&size=$enteredSize");
    var exaMap=response.data as Map;
    var toBeSent=exaMap["data"];
    return toBeSent;
  }catch(e){
    return Future.error(e);
  }
}
