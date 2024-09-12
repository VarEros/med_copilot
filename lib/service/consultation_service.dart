import 'package:med_copilot/model/consultation.dart';
import 'package:med_copilot/repository/consultation_repository.dart';

class ConsultationService {
  ConsultationRepository consultationRepository = ConsultationRepository();
  List<Consultation> consultations = [];

  Future getConsultations() async {
    consultations = await consultationRepository.getConsultations();
  }

  Future getConsultationsByPatientId(int patientId) async {
    consultations = await consultationRepository.getConsultationsByPatientId(patientId);
  }

  Future getConsultationById(String id) async {
    return await consultationRepository.getConsultationById(id);
  }

  Future saveConsultation(Consultation consultation) async {
    await consultationRepository.saveConsultation(consultation);
  }

  Consultation emptyConsultation() => Consultation(id: 0, description: '', date: DateTime.now(), patient: null);
}