import 'package:evillage/models/village_office_model.dart';
import 'package:flutter/material.dart';

List<String> officeType = ['Village Office', 'Taluk Office'];
List<Office> offices = [
  Office(
    district: 'Trivandrum',
    villageOffices: [
      'Alamcode Village',
      'Amboori Village',
      'Balaramapuram Village',
      'Chemmaruthi village',
      'Elamba Village',
      'Kadakampally Village'
    ],
    talukOffices: ['Neyyattinkara', 'Nedumangad'],
  ),
  Office(
    district: 'Kollam',
    villageOffices: [
      'Thinkalkarikkom Village',
      'Adichanallur Village',
      'Ezhukone Village',
      'Ittiva Village',
      'Kadakkal Village',
      'Mandrothuruth Village',
    ],
    talukOffices: ['Ney'],
  ),
];
List<String> districts = [
  'Trivandrum',
  'Kollam',
  'Pathanamthitta',
  'Alappuzha',
  'Kottayam',
  'Idukki',
  'Ernakulam',
  'Thrissur',
  'Palakkad',
  'Malappuram',
  'Kozhikode',
  'Wayanad',
  'Kannur',
  'Kasargod',
];
