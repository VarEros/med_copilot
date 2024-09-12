import 'package:flutter/material.dart';
import 'package:med_copilot/model/consultation.dart';
import 'package:med_copilot/model/patient.dart';
import 'package:med_copilot/service/consultation_service.dart';

class ConsultationDialog extends StatefulWidget {
  final Patient patient;
  const ConsultationDialog({ super.key, required this.patient });

  @override
  State<ConsultationDialog> createState() => _ConsultationDialogState();
}

class _ConsultationDialogState extends State<ConsultationDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Consultation consultation = ConsultationService().emptyConsultation();

  @override
  void initState() {
    consultation.patient = widget.patient;
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    final double dialogWidth = MediaQuery.of(context).size.width * 0.8;
    return AlertDialog(
      elevation: 10,
      title: Text('Agregar Consulta de ${widget.patient.name} ${widget.patient.lastname}'),
      content: SizedBox(
        width: dialogWidth,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                minLines: 1,
                maxLines: 5,
                decoration: const InputDecoration(labelText: 'Descripción'),
                initialValue: consultation.description,
                onChanged: (value) => setState (() => consultation.description = value),
                validator: (value) => value!.isEmpty ? 'Por favor, introduzca una descripción' : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancelar'),
        ),
        FilledButton(
          onPressed: _formKey.currentState != null && _formKey.currentState!.validate() ? () => Navigator.of(context).pop(consultation) : null,
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}