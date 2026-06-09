
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;

  final pages=[
    Center(child: Text('Dashboard')),
    Center(child: Text('Runtime')),
    Center(child: Text('Fuel')),
    Center(child: Text('Reports')),
    Center(child: Text('App Info'))
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Generator Tracker')),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected:(v)=>setState(()=>index=v),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          NavigationDestination(icon: Icon(Icons.timer), label: 'Runtime'),
          NavigationDestination(icon: Icon(Icons.local_gas_station), label: 'Fuel'),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Reports'),
          NavigationDestination(icon: Icon(Icons.info), label: 'Info'),
        ],
      ),
    );
  }
}
