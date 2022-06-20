import 'package:get/get.dart';
import 'package:login_application/view/loginPage/login_page.dart';

List<GetPage<dynamic>>? getPages=[
  GetPage(name: "/", page: ()=>const LoginPage()),
];