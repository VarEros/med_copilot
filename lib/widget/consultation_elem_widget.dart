import 'package:flutter/material.dart';
import 'package:med_copilot/model/consultation.dart';

class ConsultationElemWidget extends StatelessWidget {
  final Consultation consultation;
  const ConsultationElemWidget({ super.key, required this.consultation });

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(consultation.date.toString()),
      subtitle: Text(consultation.patient!.name),
      leading: const Icon(Icons.medical_services),
    );
  }
}