import 'package:flutter/material.dart';

class GridViewApp extends StatefulWidget {
  const GridViewApp({super.key});

  @override
  State<GridViewApp> createState() => _GridViewAppState();
}

class _GridViewAppState extends State<GridViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 4'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: GridView.count(
        crossAxisCount: 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(12),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Icon(Icons.add),
                Text('GridView 1'),
              ],
            ),
            color: Colors.amberAccent,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Icon(Icons.ac_unit),
                const Text('GridView 2'),
              ],
            ),
            color: const Color.fromARGB(255, 255, 64, 207),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('GridView 3'),
            color: const Color.fromARGB(255, 80, 64, 255),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('GridView 4'),
            color: const Color.fromARGB(255, 64, 255, 118),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('GridView 5'),
            color: const Color.fromARGB(255, 226, 255, 64),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text('GridView 6'),
            color: const Color.fromARGB(255, 64, 201, 255),
          ),
        ],
      ),
    );
  }
}
