import 'dart:core';

class Patient {
  final String personalId;
  final String name;
  final String lastname;
  final DateTime birthdate;
  final String email;
  final String phone;
  final bool seguimiento;

  Patient({
    required this.personalId,
    required this.name,
    required this.lastname,
    required this.birthdate,
    required this.email,
    required this.phone,
    required this.seguimiento,
  });
  
}