import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
const Screen({ super.key });

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final destinations = [
    {"title": "Pacientes", "icon": Icons.people},
    {"title": "Consultas Recientes", "icon": Icons.calendar_today},
    {"title": "Medicamentos", "icon": Icons.medication},
    {"title": "Citas Proximas", "icon": Icons.settings},
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(destinations[selectedIndex]["title"] as String),
      ),
      body: Row(
        children: [
          NavigationRail(
            destinations: destinations.map((e) => NavigationRailDestination(
              icon: Icon(e["icon"] as IconData),
              label: Text(e["title"] as String),
            )).toList(),
            selectedIndex: selectedIndex
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}