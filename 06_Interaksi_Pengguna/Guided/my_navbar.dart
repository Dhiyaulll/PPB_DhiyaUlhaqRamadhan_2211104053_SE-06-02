import 'package:flutter/material.dart';
import 'package:interaksi_pengguna/my_tabbar.dart';
import 'package:interaksi_pengguna/my_package.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({super.key});

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = <Widget>[
    MyTabbar(),
    MyPackage(),
    MyPackage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigator Bar'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: (Icon(Icons.home_max_rounded)),
            label: 'MyTabbar',
          ),
          BottomNavigationBarItem(
            icon: (Icon(Icons.laptop)),
            label: 'MyPackages1',
          ),
          BottomNavigationBarItem(
            icon: (Icon(Icons.laptop_chromebook)),
            label: 'MyPackages2',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
