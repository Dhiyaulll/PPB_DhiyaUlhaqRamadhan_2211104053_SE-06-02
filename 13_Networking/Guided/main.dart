import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:networking/view%20model/counter_controller.dart';
import 'package:networking/view/detail_page.dart';
import 'package:networking/view/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MyHomePage(title: 'Belajar Getx'),
        ),
        GetPage(
          name: '/detail',
          page: () => DetailPage(),
        ),
      ],
    );
  }
}
