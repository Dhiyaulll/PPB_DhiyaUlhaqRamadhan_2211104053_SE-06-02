import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Biodata Saya",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: ""),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'assets/profile_photo.jpg',
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const BiodataItem(
                  icon: Icons.person,
                  title: "Nama",
                  content: "Dhiya Ulhaq Ramadhan"),
              const BiodataItem(
                  icon: Icons.school,
                  title: "Program Studi",
                  content: "Software Engineering"),
              const BiodataItem(
                  icon: Icons.date_range, title: "Angkatan", content: "2022"),
              const BiodataItem(
                  icon: Icons.class_, title: "Kelas", content: "SE-06-02"),
              const BiodataItem(
                  icon: Icons.cake,
                  title: "Tanggal Lahir",
                  content: "14 November 2003"),
              const BiodataItem(
                  icon: Icons.book, title: "Hobi", content: "Membaca buku"),
              const BiodataItem(
                  icon: Icons.emoji_objects,
                  title: "Cita-cita",
                  content: "Hidup normal tanpa lika-liku"),
            ],
          ),
        ),
      ),
    );
  }
}

class BiodataItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const BiodataItem({
    super.key,
    required this.icon,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(content),
      ),
    );
  }
}
