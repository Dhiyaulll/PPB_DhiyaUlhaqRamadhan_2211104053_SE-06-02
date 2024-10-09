import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan List View'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: Center(child: Text("Type A")),
          ),
          Container(
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 4, 172, 18),
            child: Center(child: Text("Type B")),
          ),
          Container(
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 42, 0, 251),
            child: Center(child: Text("Type C")),
          ),
        ],
      ),
    );
  }
}
