import 'package:flutter/material.dart';
import 'package:projectfinal/pages/initial_screen.dart';
import 'package:projectfinal/pages/lista.dart';
import 'package:projectfinal/pages/gridView.dart';
import 'package:projectfinal/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List pages = const [
    Album(),
    Profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'MINHA BIBLIOTECA',
          style: TextStyle(
              fontFamily: 'Pacifico-Regular',
              fontSize: 28,
              color: Colors.black12),
        ),
        toolbarHeight: 100,
        backgroundColor: const Color(0xffa0cfcc),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        //type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFFE81F7C),
        items: const [
          // BottomNavigationBarItem(
          // icon: Icon(Icons.), label: 'Destaques'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), label: 'Pacotes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
