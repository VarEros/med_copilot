import 'package:flutter/material.dart';
import 'package:med_copilot/service/patient_service.dart';
import 'package:med_copilot/widget/patient_elem_widget.dart';

class PatientListScreen extends StatefulWidget {
const PatientListScreen({ super.key });

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
  Widget build(BuildContext context){
    return isLoading ? const Center(child: CircularProgressIndicator()) : Stack(
      children: [
        ListView(
          children: patientService.patients.map((patient) => PatientElemWidget(patient: patient)).toList(),
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