import 'package:antarmuka_pengguna_lanjutan/custom.dart';
import 'package:antarmuka_pengguna_lanjutan/flexible_expanded.dart';
import 'package:antarmuka_pengguna_lanjutan/jenis_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Custom(),
    );
  }
}
