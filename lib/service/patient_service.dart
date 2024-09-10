import 'package:med_copilot/model/patient.dart';
import 'package:med_copilot/repository/patient_repository.dart';

class PatientService {
  PatientRepository patientRepository = PatientRepository();
  List<Patient> patients = [];

  Future getPatients() async {
    patients = await patientRepository.getPatients();
  }


}