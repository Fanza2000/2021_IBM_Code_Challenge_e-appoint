import 'package:evillage/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../themes/text_theme.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final userData = GetStorage();

  Future<dynamic> customDialogLogOut(BuildContext context) {
    return Get.dialog(
      Container(
        margin: EdgeInsets.symmetric(
            vertical: Get.height * 0.35, horizontal: Get.width * 0.18),
        padding: EdgeInsets.all(20),
        width: Get.width * 0.8,
        height: Get.width * 0.8,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Log Out!',
                    style: kSubHeadTextStyle.copyWith(
                      fontSize: 20,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'This will erase all data.',
                    style: kSubHeadTextStyle.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  Text(
                    'Are you sure?',
                    style: kSubHeadTextStyle.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Text(
                                'No',
                                style: kSubHeadTextStyle.copyWith(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColorDark,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Theme.of(context).primaryColor),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () async {
                            await resetUser();
                            Get.offAll(() => SignUp());
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            child: Text(
                              'Yes',
                              style: kSubHeadTextStyle.copyWith(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  resetUser() async {
    userData.erase();
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
          'Settings',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (() => customDialogLogOut(context)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset('assets/icons/logout.png', width: 100),
          ),
        ),
      ),
    );
  }
}
