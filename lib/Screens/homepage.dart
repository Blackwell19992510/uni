import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  static const List<Widget> _WidgetOptions = <Widget>[
    Text('Homepage', style: optionStyle),
    Text('Search', style: optionStyle),
    Text('Profile', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 235, 182),
      appBar: AppBar(
        title: const Text('Star University'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 180, 235, 182),
        child: ListView(padding: EdgeInsets.zero, children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.green),
            accountName: Text('Muchi'),
            accountEmail: Text('muchi@gmail.com'),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.diversity_3),
            title: const Text('Faculty & Staff'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.feed),
            title: const Text('Admissions'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Academics'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_ic_call),
            title: const Text('Contact'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ]),
      ),
      body: Center(
        child: _WidgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ('Search'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Profile'),
            backgroundColor: Colors.green,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
