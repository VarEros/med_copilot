import 'package:flutter/material.dart';
import 'package:med_copilot/model/patient.dart';
import 'package:med_copilot/service/consultation_service.dart';
import 'package:med_copilot/widget/consultation_elem_widget.dart';

class ConsultationListScreen extends StatefulWidget {
  final Patient? patient; 
  const ConsultationListScreen({ super.key, this.patient });

  @override
  State<ConsultationListScreen> createState() => _ConsultationListScreenState();
}

class _ConsultationListScreenState extends State<ConsultationListScreen> {
  ConsultationService consultationService = ConsultationService();
  bool isLoading = true;

  loadData() {
    setState(() => isLoading = true);
    consultationService.getConsultations().then((value) {
      if (mounted) setState(() => isLoading = false);
    });
  }

  @override
  initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return isLoading ? const Center(child: CircularProgressIndicator()) : Stack(
      children: [
        ListView(
          children: consultationService.consultations.map((consultation) => ConsultationElemWidget(consultation: consultation)).toList(),
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