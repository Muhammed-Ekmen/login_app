import 'package:get/get.dart';
import 'package:login_application/view/homepage/viewOfHomePage/homepage.dart';
import 'package:login_application/view/loginPage/viewOfLogin/login_page.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/", page: () => LoginPage()),
  GetPage(name: "/homepage", page: () => HomePage()),
];
