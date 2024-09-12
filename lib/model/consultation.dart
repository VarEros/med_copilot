import 'package:med_copilot/model/patient.dart';

class Consultation {
  int id;
  String description;
  DateTime date;
  Patient? patient;

  Consultation({
    required this.id,
    required this.description,
    required this.date,
    required this.patient,
  });
}