import 'package:flutter/material.dart';
import 'package:interaksinavigasi/pages/detailpage.dart';
import 'package:interaksinavigasi/pages/mypage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Pengaturan inisialisasi untuk Android
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  // Pengaturan inisialisasi untuk iOS
  const DarwinInitializationSettings initializationSettingsIOS =
      DarwinInitializationSettings();

  // Menggabungkan semua pengaturan platform
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );

  // Inisialisasi plugin dengan pengaturan
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NotificationScreen(),
    );
  }
}

Future<void> showNotification() async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'Dhy', // ID unik untuk channel
    'Dhiyaul', // Nama channel
    channelDescription: 'Welkambek tu may cenel', // Deskripsi channel
    importance: Importance.max,
    priority: Priority.high,
    showWhen: true,
  );
  const NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
  );
  await flutterLocalNotificationsPlugin.show(
    0, // ID notifikasi
    'Simple Notification', // Judul notifikasi
    'This is a Simple Notification', // Isi notifikasi
    platformChannelSpecifics,
  );
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Local Notifications")),
      body: Center(
        child: ElevatedButton(
          onPressed:
              showNotification, // Panggil fungsi notifikasi saat tombol ditekan
          child: const Text("Show Notification"),
        ),
      ),
    );
  }
}
