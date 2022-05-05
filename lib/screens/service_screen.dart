import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ServiceScreen extends StatefulWidget {
  final String? title;
  ServiceScreen({Key? key, this.title}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
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
                    '- Certificates issued previously in this regard \n- Attested copies of School Certificates',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
