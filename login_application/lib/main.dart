import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_application/data/constants/color_constants.dart';
import 'package:login_application/data/route/get_routes.dart';
import 'errorPage/error_page.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    ErrorWidget.builder = (FlutterErrorDetails details) {
      return const ErrorPage();
      // details.printError();  
    } ;
    runApp(const MyApp());
  } catch (e) {
    return Future.error(e);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: appMainColor,
      ),
      initialRoute: "/",
      unknownRoute: GetPage(name: "/ErrorPage", page: () => const ErrorPage()),
      getPages: getPages,
    );
  }
}


///image cart
///texformfield
///dosyalama yapisi
///getX
///her dosya file tek bir ozellik olmaliu view yada data yada widget
///
///look at the other big flutter projects structure
///http kullan