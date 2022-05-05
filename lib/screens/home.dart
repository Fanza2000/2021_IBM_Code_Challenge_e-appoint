import 'package:evillage/screens/service_screen.dart';
import 'package:evillage/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../constants.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedDistrict = 'Trivandrum';
  String selectedOfficeType = 'Village Office';
  String selectedPlace = '';
  List<String> places = [];

  @override
  void initState() {
    super.initState();
    setList();
  }

  setList() {
    offices.forEach((element) {
      if (element.district == selectedDistrict) {
        if (selectedOfficeType == 'Village Office') {
          selectedPlace = element.villageOffices![0];
          places = element.villageOffices!;
        } else if (selectedOfficeType == 'Taluk Office') {
          selectedPlace = element.talukOffices![0];
          places = element.talukOffices!;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icons/link.png',
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => Get.to(() => Settings()),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/female-user-1.png',
                    ),
                    backgroundColor: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
            dropDownSelector(
              context,
              padding: 70,
              selectedVal: selectedDistrict,
              lists: districts,
              onChanged: (String? value) {
                setState(() {
                  selectedDistrict = value!;
                  setList();
                });
              },
            ),
            dropDownSelector(
              context,
              padding: 70,
              selectedVal: selectedOfficeType,
              lists: officeType,
              onChanged: (String? value) {
                setState(() {
                  selectedOfficeType = value!;
                  setList();
                });
              },
            ),
            dropDownSelector(
              context,
              padding: 30,
              selectedVal: selectedPlace,
              lists: places,
              onChanged: (String? value) {
                setState(() {
                  selectedPlace = value!;
                });
              },
            ),
            SizedBox(height: 40),
            Text('Services'),
            Text('Certificates'),
            ServiceContainer(title: 'Caste Certificate'),
            ServiceContainer(title: 'Income Certificate'),
            Text('Taxes/Fees'),
            ServiceContainer(title: 'Building Tax'),
            ServiceContainer(title: 'Plantation Tax'),
          ],
        ),
      ),
    );
  }

  Widget dropDownSelector(BuildContext context,
      {String? selectedVal,
      required void Function(String?)? onChanged,
      List<String>? lists,
      double? padding}) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: Get.width * 0.9,
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.06),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xffeeeeee),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DropdownButton(
              elevation: 2,
              value: selectedVal,
              underline: Container(color: Colors.transparent),
              hint: Text('Select'),
              iconSize: 0,
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding!),
              ),
              items: lists!.map(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              onChanged: onChanged,
              dropdownColor: Theme.of(context).primaryColorLight,
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

class ServiceContainer extends StatelessWidget {
  final String? title;
  const ServiceContainer({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ServiceScreen(title: title));
      },
      child: Container(
        height: 60,
        width: Get.width * 0.9,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xff035397),
            width: 2,
          ),
        ),
        child: Text(title!),
      ),
    );
  }
}
