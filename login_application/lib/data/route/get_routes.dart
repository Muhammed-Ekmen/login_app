import 'package:get/get.dart';
import 'package:login_application/homepage/view/homepage.dart';
import 'package:login_application/loginPage/view/login_page.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/", page: () => LoginPage()),
  GetPage(name: "/homepage", page: () =>  HomePage()),
];
