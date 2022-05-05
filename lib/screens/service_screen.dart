import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../global_widgets/bottom_sheet.dart';
import '../global_widgets/proceed_button.dart';

class ServiceScreen extends StatefulWidget {
  final String? title;
  ServiceScreen({Key? key, this.title}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  TextEditingController? dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  Future<Null> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(2022),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      selectedDate = picked;
      dateController!.text = DateFormat.yMMMd().format(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
          ),
        ),
        title: Text(
          widget.title!,
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              height: 140,
              width: Get.width * 0.9,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xff035397).withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xff035397),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Requirements'),
                  Text(
                    '- Certificates issued previously in this regard \n- Attested copies of School Certificates \n- Ration card \n- Gazette notification (incase of conversion)',
                  ),
                ],
              ),
            ),
            SizedBox(height: 380),
            Center(
              child: ProceedButton(
                size: Get.size,
                onPress: () {
                  dateController!.clear();
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return BottomSheetContent(
                        buttonText: 'Book Slot',
                        dateController: dateController,
                        onTap: () {
                          selectDate(context);
                        },
                        onSubmit: () {
                          // controller.addTask();
                        },
                      );
                    },
                  );
                },
                title: 'Book Slot',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
