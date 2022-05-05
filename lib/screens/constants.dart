import 'package:evillage/models/village_office_model.dart';
import 'package:flutter/material.dart';

List<String> officeType = ['Village Office', 'Thaluk Office'];
List<Office> offices = [
  Office(
    district: 'Trivandrum',
    villageOffices: [
      'Alamcode Village',
      'Amboori Village',
      'Balaramapuram Village',
      'Chemmaruthi village Office',
      'Elamba Village',
      'Kadakampally Village'
    ],
  ),
  Office(
    district: 'Kollam',
    villageOffices: [
      'Thinkalkarikkom Village',
      'Adichanallur Village',
      'Ezhukone Village',
      'Ittiva Village',
      'Kadakkal Village office',
      'Mandrothuruth Village',
    ],
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
