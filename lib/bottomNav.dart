import 'package:flutter/material.dart';
import 'package:lora_sniffer/graphScreen.dart';
import 'package:lora_sniffer/homeScreen.dart';
import 'package:lora_sniffer/mapScreen.dart';

class BottomNav extends StatefulWidget {
  final loginToken;
  final id;
  BottomNav({super.key, this.loginToken, this.id});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentstate = 0;
  String? loginToken;

  void _onItemTapped(int index) {
    setState(() {
      currentstate = index;
    });
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const HomeScreen(),
      const MapScreen(),
      const GraphScreen(),
    ];
    return Scaffold(
      body: IndexedStack(
        index: currentstate,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        surfaceTintColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_graph),
            label: 'Graph',
          ),
        ],
        selectedIndex: currentstate,
        onDestinationSelected: (index) {
          _onItemTapped(index);
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
    );
  }
}
