import 'package:flutter/material.dart';
import 'package:med_copilot/model/patient.dart';
import 'package:med_copilot/service/patient_service.dart';

class PatientListScreen extends StatefulWidget {
    final Function(Patient) onPatientSelected; // Callback para manejar la selección de un paciente
  const PatientListScreen({ super.key, required this.onPatientSelected });

  @override
  State<PatientListScreen> createState() => _PatientListScreenState();
}

class _PatientListScreenState extends State<PatientListScreen> {
  PatientService patientService = PatientService();
  bool isLoading = true;

  loadData() {
    setState(() => isLoading = true);
    patientService.getPatients().then((value) {
      if (mounted) setState(() => isLoading = false);
    });
  }

  @override
  initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return isLoading ? const Center(child: CircularProgressIndicator()) : Stack(
      children: [
        ListView(
          children: patientService.patients.map((patient) => ListTile(
          title: Text("${patient.name} ${patient.lastname}"),
          subtitle: Text(patient.personalId),
          leading: const Icon(Icons.person),
          trailing: IconButton(
            icon: const Icon(Icons.folder),
            onPressed: () {
              widget.onPatientSelected(patient);
            },
          ),
        )).toList(),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: FloatingActionButton(
            onPressed: () {
              
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}