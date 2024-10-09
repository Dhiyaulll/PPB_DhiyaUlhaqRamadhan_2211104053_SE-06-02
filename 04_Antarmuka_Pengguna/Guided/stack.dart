import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Stack"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 250,
            width: 250,
            child: Stack(),
          ),
        ],
      ),
    );
  }
}
