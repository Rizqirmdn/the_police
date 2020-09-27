import 'package:flutter/material.dart';
import 'package:polisi_crime_mapping/screens/list_pengaduan_active_screen.dart';
import 'package:polisi_crime_mapping/screens/list_pengaduan_screen.dart';
import 'package:polisi_crime_mapping/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;
  final screens = [
    ListPengaduanScreen(),
    ListPengaduanActiveScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            tabIndex = value;
          });
        },
        currentIndex: tabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
             title: Text('List Pengaduan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Pengaduan Aktif'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profil'),
          ),
        ],
      ),
      body: IndexedStack(
        index: tabIndex,
        children: <Widget>[
          ListPengaduanScreen(key: PageStorageKey("Page1")),
          ListPengaduanActiveScreen(key: PageStorageKey("Page2")),
          ProfileScreen(key: PageStorageKey("Page3")),
        ],
      ),
    );
  }
}
