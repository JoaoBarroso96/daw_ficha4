import 'package:ficha1/screens/image_lagoa_fogo.dart';
import 'package:ficha1/screens/image_lagoa_furnas.dart';
import 'package:ficha1/screens/image_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final _pageOptions = [
    ImageLagoaFurnasRoute(),
    ImageLagoaFogoRoute(),
    ImageRoute(),
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
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/background.png')),
                color: Colors.blue,
              ),
              child: Center(
                  child: Text('Ver Lagoas',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25))),
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: const Text('Lagoa Furnas'),
              onTap: () {
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.cloud_queue_sharp),
              title: const Text('Lagoa Fogo'),
              onTap: () {
                _onItemTapped(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.eco_outlined),
              title: const Text('7 Cidades'),
              onTap: () {
                _onItemTapped(2);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _pageOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Lagoa Furnas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Lagoa Fogo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: '7 Cidades',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
