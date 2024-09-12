import 'package:flutter/material.dart';
import 'package:med_copilot/model/patient.dart';
import 'package:med_copilot/screen/consultation_list_screen.dart';
import 'package:med_copilot/screen/patient_list_screen.dart';

class Screen extends StatefulWidget {
const Screen({ super.key });

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final destinations = [
    {"title": "Pacientes", "icon": Icons.people},
    {"title": "Consultas", "icon": Icons.folder},
    {"title": "Medicamentos", "icon": Icons.medication},
    {"title": "Citas Proximas", "icon": Icons.settings},
  ];

  late List<Widget> screens;

  int selectedIndex = 0;
  Patient? selectedPatient;

  @override
  void initState() {
    screens = [
      PatientListScreen(onPatientSelected: (patient) {
        setState(() => selectedPatient = patient);
        selectedIndex = 1;
      }),
      ConsultationListScreen(patient: selectedPatient),
      const Center(child: Text("Medicamentos")),
      const Center(child: Text("Citas Proximas")),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).primaryColorLight,
        title: Text((destinations[selectedIndex]["title"] as String) + (selectedPatient != null ? " de ${selectedPatient!.name} ${selectedPatient!.lastname}" : "")),
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: (value) => setState(() {
              selectedPatient = null;
              selectedIndex = value;
            }),
            labelType: NavigationRailLabelType.all,
            elevation: 5,
            destinations: destinations.map((e) => NavigationRailDestination(
              icon: Icon(e["icon"] as IconData),
              label: Text(e["title"] as String),
            )).toList()
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: screens[selectedIndex],
          ),
        ],
      ),
    );
  }
}