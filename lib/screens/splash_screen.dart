import 'dart:async';

import 'package:eappoint/screens/home.dart';
import 'package:eappoint/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoggedIn = false;
  final userData = GetStorage();

  checkLogin() {
    isLoggedIn = userData.read('loginStatus');
  }

  @override
  void initState() {
    super.initState();
    userData.writeIfNull('loginStatus', false);
    checkLogin();
    Timer(
      Duration(milliseconds: 3000),
      () => Get.off(isLoggedIn ? () => Home() : () => SignUp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/link.png',
              width: Get.width * 0.4,
            ),
            SizedBox(height: 40),
            Text(
              'e-appoint',
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
