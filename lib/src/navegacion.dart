import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantalla de ',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kendrick Lamar - Sebasrian Vaca',
          style: TextStyle(
            fontFamily: 'Tinos',
            fontSize: 24.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipOval(
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.25,
                backgroundImage: const AssetImage('images/kendrick.jpg'),
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'DAM.',
                style: TextStyle(
                    color: Color.fromARGB(255, 3, 3, 3),
                    fontSize: 50,
                    fontFamily: "Tinos"),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: Container(
        height: 56.0,
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {},
                    color: const Color.fromARGB(255, 255, 0, 0)),
                const Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {},
                  color: const Color.fromARGB(255, 255, 0, 0),
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.shop),
                  onPressed: () {},
                  color: const Color.fromARGB(255, 255, 0, 0),
                ),
                const Text(
                  'Shop',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () {},
                  color: const Color.fromARGB(255, 255, 0, 0),
                ),
                const Text(
                  'Calendar',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.person_add_alt_outlined),
                  onPressed: () {},
                  color: const Color.fromARGB(255, 255, 0, 0),
                ),
                const Text(
                  'About me',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
