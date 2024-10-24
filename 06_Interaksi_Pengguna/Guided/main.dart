import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interaksi_pengguna/my_navbar.dart';
import 'package:interaksi_pengguna/my_package.dart';
import 'package:interaksi_pengguna/my_tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.srirachaTextTheme()),
      home: const MyNavbar(),
    );
  }
}
