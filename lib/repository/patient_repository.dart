import 'package:med_copilot/model/patient.dart';

class PatientRepository {

  Future<List<Patient>> getPatients() async {
    return [Patient(
      personalId: "123456789",
      name: "Juan",
      lastname: "Perez",
      birthdate: DateTime.now(),
      email: "mail.com",
      phone: "123456789",
      seguimiento: true,
    ),Patient(
      personalId: "123456789",
      name: "Juan",
      lastname: "Perez",
      birthdate: DateTime.now(),
      email: "mail.com",
      phone: "123456789",
      seguimiento: true,
    )];
  }

  Future<Patient> getPatientById(int id) async {
    return Patient(
      personalId: "123456789",
      name: "Juan",
      lastname: "Perez",
      birthdate: DateTime.now(),
      email: "mail.com",
      phone: "123456789",
      seguimiento: true,
    );
  }

  Future<void> savePatient(Patient patient) async {
    // Add patient to API
  }

  Future<void> deletePatient(int id) async {
    // Delete patient from API
  }
}