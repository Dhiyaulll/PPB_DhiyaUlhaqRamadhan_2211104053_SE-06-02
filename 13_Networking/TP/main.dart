import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller untuk mengelola state counter
class CounterController extends GetxController {
  // Membuat variable observable untuk nilai counter
  var count = 0.obs;

  // Fungsi untuk menambah nilai counter
  void increment() {
    count.value++;
  }

  // Fungsi untuk mereset nilai counter ke 0
  void reset() {
    count.value = 0;
  }
}

class HomePage extends StatelessWidget {
  // Inisialisasi dan inject controller
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Obx(() {
          // Menampilkan nilai counter yang reactive
          return Text(
            "${controller.count.value}",
            style: TextStyle(fontSize: 48),
          );
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Memanggil fungsi increment saat tombol + ditekan
              controller.increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Memanggil fungsi reset saat tombol refresh ditekan
              controller.reset();
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
