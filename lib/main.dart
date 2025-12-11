import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dev/home.dart';
import 'projectss.dart';
import 'about.dart';
//import 'diff.dart';
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

 textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),
      // copied from https://docs.flutter.dev/cookbook/design/themes cause i don't know what to dooo
      titleLarge: GoogleFonts.oswald(
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: GoogleFonts.merriweather(),
      displaySmall: GoogleFonts.pacifico(),
    ),
      
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

  final List<String> indextitles = [
    "Home Page",
    "Projects Page",
    "About Page",
    "Diff Page",
  ];
  final List<Widget> _pages = [
   Theme(
    data: ThemeData(
      primarySwatch: Colors.blue,
      
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(96, 123, 1, 1),
        selectedItemColor: Colors.pink,

      ),

    ),
    child: HomePage(),
   ),
    
     Theme(
    data: ThemeData(
      primarySwatch: Colors.blue,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(97, 165, 51, 51),
        selectedItemColor: Colors.pinkAccent,
      ),
    ),
    child: ProjectPage(),
     ),
     Theme(
    data: ThemeData(
      primarySwatch: Colors.blue,
      
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(97, 165, 51, 51),
        selectedItemColor: Colors.pinkAccent,
      ),
    ),
    child: AboutPage(),
     ),
     //DiffPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(indextitles[_currentIndex]),
        centerTitle: true,  
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, 
  selectedItemColor: Colors.purpleAccent,     
  unselectedItemColor: Colors.lightBlue, 

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
            icon: Icon(Icons.cell_tower_outlined),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.wine_bar_rounded),
            label: 'DIFF'
          )
        ],
      ),
    );
  }
}

// Settings page widget defined in the same main.dart





//profileee

