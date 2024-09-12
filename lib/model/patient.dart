import 'dart:core';

class Patient {
  int id;
  String personalId;
  String name;
  String lastname;
  DateTime birthdate;
  String email;
  String phone;
  bool seguimiento;

  Patient({
    required this.id,
    required this.personalId,
    required this.name,
    required this.lastname,
    required this.birthdate,
    required this.email,
    required this.phone,
    required this.seguimiento,
  });
  
}