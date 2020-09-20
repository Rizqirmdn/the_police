import 'package:flutter/material.dart';
import 'package:the_police/screen/laporan.dart';
import 'package:the_police/screen/profil.dart';

class Home extends StatefulWidget {
  static final routeName = '/dashboard';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, Object>> _pages = [
    {
      'page': Laporan(),
      'title': 'Laporan',
    },
    {
      'page': Profil(),
      'title': 'Profil',
    },
  ];
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        backgroundColor: Colors.brown,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.book),
            title: Text('Laporan'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.picture_in_picture_alt),
            title: Text('Profil'),
          ),
        ],
      ),
    );
  }
}
