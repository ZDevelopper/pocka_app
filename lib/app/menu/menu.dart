import 'package:flutter/material.dart';
import 'package:pocka_app/app/features/home/home.dart';
import 'package:pocka_app/app/features/parameters/parameters.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MenuPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text('Favoris'),
    Text('Mes Documents'),
    Text('Profil'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.add), // Icône du bouton
            onPressed: () {
              // Action à effectuer lors du clic sur le bouton
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParametersScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Mes Documents',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Color(0xFF010230),
        selectedItemColor: Color(0xFFF0604D),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
