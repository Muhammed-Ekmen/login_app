import 'package:get/get.dart';
import '../Screens/Home_Page/view/homepage.dart';
import '../Screens/Login_Page/view/login_page.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/", page: () => LoginPage()),
  GetPage(name: "/homepage", page: () => HomePage()),
];
