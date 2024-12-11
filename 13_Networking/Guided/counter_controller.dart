import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
  }

  void getsnackbar() {
    Get.snackbar(
      'Getx Snackbar',
      'ini snackbar',
      colorText: Colors.white,
      backgroundColor: Colors.green,
    );
  }

  void getdialog() {
    Get.defaultDialog(
      title: 'Getx Dialog',
      middleText: 'Ini dialog',
    );
  }

  void getbottomsheet() {
    Get.bottomSheet(
      Container(
        height: 70,
        width: 90,
        color: Colors.amber,
        child: Text('ini adalah BottomSheet'),
      ),
    );
  }
}
