import 'package:med_copilot/model/patient.dart';

class Consultation {
  final String id;
  final String description;
  final DateTime date;
  final Patient? patient;

  Consultation({
    required this.id,
    required this.description,
    required this.date,
    required this.patient,
  });
}