import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePage_Controller extends GetxController {
  final find_size_key = GlobalKey<FormFieldState>();
  TextEditingController find_size_controller = TextEditingController();

  RxInt numberOfSize=RxInt(1);
  changeNumberOfSize(int incoming){
    numberOfSize.value=incoming;
  }
}
