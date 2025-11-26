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
      title: 'NAYAN135',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        secondaryHeaderColor: Colors.amber,
      ),
      home: const HomeScreen(),
      
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Center(
      child: Text(
        'Hello, Nayan!',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    ),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentIndex == 0 ? 'Welcome to Flutter' : 'Settings'),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; 
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          )
        ],
      ),
    );
  }
}

// Settings page widget defined in the same main.dart
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
const Text(
        'Settings Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      ),
       const SizedBox(height: 20), 
          IconButton(
            icon: const Icon(Icons.settings, size: 40),
            onPressed: () {
              print('Settings icon pressed!');
            },
          ),
        
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}




//profileee

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
const Text(
        'Abput Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      ),
       const SizedBox(height: 20), 
          IconButton(
            icon: const Icon(Icons.portable_wifi_off_outlined, size: 40),
            onPressed: () {
              print('Settings icon pressed!');
            },
          ),
        
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}