import 'package:med_copilot/model/consultation.dart';

class ConsultationRepository {
  Future<List<Consultation>> getConsultations() async {
    // Fetch data from API
    return [];
  }

  Future<Consultation> getConsultationById(String id) async {
    // Fetch data from API
    return Consultation(id: '1', description: 'description', date: DateTime.now(), patient: null);
  }

  Future<List<Consultation>> getConsultationsByPatientId(int patientId) async {
    // Fetch data from API
    return [];
  }

  Future<void> saveConsultation(Consultation consultation) async {
    // Add data to API
  }
}