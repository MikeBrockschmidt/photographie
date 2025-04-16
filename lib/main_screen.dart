import 'package:flutter/material.dart';
import 'package:photographie/pages/about_me_page.dart';
import 'package:photographie/pages/image_page.dart';
import 'package:photographie/pages/eins.dart';
import 'package:photographie/pages/zwei.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  final List<Widget> pages = [
    ImagePage(),
    AboutMePage(),
    EinsPage(),
    ZweiPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/photographie/mb-logo-g.jpg',
          height: 32,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: pages[_pageIndex],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _pageIndex,
        onDestinationSelected: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.image), label: 'Galerie I'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Über mich'),
          NavigationDestination(
              icon: Icon(Icons.music_note), label: 'Galerie Musik'),
          NavigationDestination(
              icon: Icon(Icons.camera_alt), label: 'Galerie sw'),
        ],
      ),
    );
  }
}
