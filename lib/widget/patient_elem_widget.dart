import 'package:flutter/material.dart';
import 'package:med_copilot/model/patient.dart';

class PatientElemWidget extends StatelessWidget {
  final Patient patient;
  const PatientElemWidget({ super.key, required this.patient });

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text("${patient.name} ${patient.lastname}"),
      subtitle: Text(patient.personalId),
      leading: const Icon(Icons.person),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}