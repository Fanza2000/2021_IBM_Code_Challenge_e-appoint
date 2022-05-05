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
    talukOffices: [
      'Thiruvanthapuram',
      'Neyyattinkara',
      'Nedumangad',
      'Chirayinkeezhu',
      'Attingal'
    ],
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
    talukOffices: [
      'Kollam',
      'Kottarakkara',
      'Pathanapuram',
      'Punalur',
      'Karunagappally',
      'Kunnathur',
      'Sasthamcottah'
    ],
  ),
  Office(
    district: 'Pathanamthitta',
    villageOffices: [
      'Kunnamthanam',
      'Mallapally',
      'Puramattom Adoor (PTA)',
      'Angadickal',
      'Anicadu'
    ],
    talukOffices: [
      'Kozhenchery',
      'Adoor',
      'Thiruvalla',
      'Mallappally',
      'Ranni'
    ],
  ),
  Office(
    district: 'Alappuzha',
    villageOffices: [
      'Alappuzha West',
      'Ambalappuzha North',
      'Ambalappuzha',
      'Aryad South',
      'Champakkulam',
      'Edathuva'
    ],
    talukOffices: [
      'Cherthala',
      'Ambalapuzha',
      'Kuttanad',
      'Chengannur',
      'Mavelikara',
      'Karthikappally'
    ],
  ),
  Office(
    district: 'Kottayam',
    villageOffices: [
      'Akalakkunnam',
      'Anickadu',
      'Arppookkara',
      'Athirampuzha',
      'Ayarkkunnam',
      'Aymanam'
    ],
    talukOffices: [
      'Kottayam',
      'Changanacherry',
      'Vaikom',
      'Meenachil',
      'Kanjirappally'
    ],
  ),
  Office(
    district: 'Idukki',
    villageOffices: [''],
    talukOffices: [
      'Peerumade',
      'Thodupuzha',
      'Udumbanchola',
      'Kattappana',
      'Devikulam',
      'Munnar'
    ],
  ),
  Office(
    district: 'Ernakulam',
    villageOffices: [],
    talukOffices: [
      'Kochi',
      'Vypin',
      'Kanayanur',
      'Kakkanadu',
      'Kothamanagalam',
      'Kunnthunad',
      'Perumbavoor',
      'Muvattupuzha',
      'Aluva',
      'North Paravur'
    ],
  ),
  Office(
    district: 'Thrissur',
    villageOffices: [],
    talukOffices: [
      'Thrissur',
      'Kodungalloor',
      'Mukundapuram',
      'Irinjalakkuda',
      'Thalappally',
      'Chavakkadu'
    ],
  ),
  Office(
    district: 'Palakkad',
    villageOffices: [],
    talukOffices: [
      'Palakkad',
      'Alathur',
      'Chittur',
      'Ottappalam',
      'Mannarkkadu'
    ],
  ),
  Office(
    district: 'Malappuram',
    villageOffices: [],
    talukOffices: ['Ernad', 'Manjeri', 'Perinthalmanna', 'Ponnani', 'Tirur'],
  ),
  Office(
    district: 'Kozhikode',
    villageOffices: [],
    talukOffices: ['Kozhikkode', 'Koilandi', 'Vadakara'],
  ),
  Office(
    district: 'Wayanad',
    villageOffices: [],
    talukOffices: ['Vythiri', 'Kalpetta', 'Mananthavady', 'Sulthanbathery'],
  ),
  Office(
    district: 'Kannur',
    villageOffices: [],
    talukOffices: ['Thaliparmba', 'Kannur', 'Thalassery'],
  ),
  Office(
    district: 'Kasargod',
    villageOffices: [],
    talukOffices: ['Kasargod', 'Hosdurg'],
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
