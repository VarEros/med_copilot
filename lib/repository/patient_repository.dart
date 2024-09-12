import 'package:med_copilot/model/patient.dart';

class PatientRepository {

  Future<List<Patient>> getPatients() async {
    return Future.delayed(const Duration(seconds: 2), () => [Patient(
      id: 1,
      personalId: "123456789",
      name: "Juan",
      lastname: "Perez",
      birthdate: DateTime.now(),
      email: "mail.com",
      phone: "123456789",
      seguimiento: true,
    ),Patient(
      id: 2,
      personalId: "123456789",
      name: "Juan",
      lastname: "Perez",
      birthdate: DateTime.now(),
      email: "mail.com",
      phone: "123456789",
      seguimiento: true,
    )]); 
  }

  Future<Patient> getPatientById(int id) async {
    return Patient(
      id: 1,
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