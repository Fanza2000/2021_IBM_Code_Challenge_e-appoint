import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global_widgets/input_text_feild.dart';
import '../global_widgets/proceed_button.dart';
import '../models/user_model.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController aadharController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  // instance of userData model
  late User user;
  final userData = GetStorage();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    userData.writeIfNull('fName', 'Name');
    userData.writeIfNull('aadhar', 'aadhar');
    userData.writeIfNull('phone', '9999999999');
    userData.writeIfNull('address', 'abcd xyz');
    userData.writeIfNull('age', '10');
    nameController = TextEditingController();
    aadharController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
    ageController = TextEditingController();
  }

  // FirstName validator
  String? fNameValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your full name';
    }
    if (value.isNotEmpty && value.length > 2) {
      return null;
    } else
      return 'Enter a valid name';
  }

  // LastName validator
  String? aadharValidator(String value) {
    if (value.isEmpty) {
      return 'Enter your aadhar number';
    }
    if (value.isNumericOnly) {
      return null;
    } else
      return 'Enter a valid aadhar number';
  }

  // Email validator
  String? phoneValidator(String value) {
    if (value.isEmpty) {
      return 'Enter your phone number';
    }
    if (value.isPhoneNumber) {
      return null;
    } else
      return 'Enter a valid phone number';
  }

  String? addressValidator(String value) {
    if (value.isEmpty) {
      return 'Enter your address';
    }
    if (value.isNotEmpty && value.length > 10) {
      return null;
    } else
      return 'Enter a valid address';
  }

  String? ageValidator(String value) {
    if (value.isEmpty) {
      return 'Enter your age';
    }
    if (value.isNumericOnly) {
      return null;
    } else
      return 'Enter a valid age';
  }

  // function to validate creds
  bool validateCreds() {
    bool validated = false;
    if (fNameValidator(nameController.text) == null &&
        aadharValidator(aadharController.text) == null &&
        phoneValidator(phoneController.text) == null &&
        addressValidator(addressController.text) == null &&
        ageValidator(ageController.text) == null) {
      validated = true;
    } else {
      validated = false;
    }
    return validated;
  }

  // function to login to app
  userLogin() {
    if (validateCreds()) {
      user = User();
      user.fullName = nameController.text;
      user.aadhar = aadharController.text;
      user.phoneNo = phoneController.text;
      user.address = addressController.text;
      user.age = ageController.text;
      userData.write('fName', user.fullName);
      userData.write('aadhar', user.aadhar);
      userData.write('phone', user.phoneNo);
      userData.write('address', user.address);
      userData.write('age', user.age);
      userData.write('loginStatus', true);
      Get.offAll(() => Home());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(14),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/link.png',
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'e-village',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Text(
                'Sign Up',
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              InputTextFormField(
                hintText: 'Full Name (as in Aadhar)',
                tController: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your first name';
                  }
                  if (value.isNotEmpty && value.length > 2) {
                    return null;
                  } else
                    return 'Enter a valid name';
                },
              ),
              SizedBox(height: 20),
              InputTextFormField(
                hintText: 'Aadhar',
                tController: aadharController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your aadhar number';
                  }
                  if (value.isNumericOnly) {
                    return null;
                  } else
                    return 'Enter a valid aadhar number';
                },
              ),
              SizedBox(height: 20),
              InputTextFormField(
                hintText: 'Phone No.',
                tController: phoneController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your phone number';
                  }
                  if (value.isPhoneNumber && value.length == 10) {
                    return null;
                  } else
                    return 'Enter a valid phone number';
                },
              ),
              SizedBox(height: 20),
              InputTextFormField(
                hintText: 'Address',
                tController: addressController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your address';
                  }
                  if (value.isNotEmpty && value.length > 10) {
                    return null;
                  } else
                    return 'Enter a valid address';
                },
              ),
              SizedBox(height: 20),
              InputTextFormField(
                hintText: 'Age',
                tController: ageController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter your age';
                  }
                  if (value.isNumericOnly) {
                    return null;
                  } else
                    return 'Enter a valid age';
                },
              ),
              SizedBox(height: 30),
              Center(
                child: ProceedButton(
                  size: Get.size,
                  onPress: () {
                    userLogin();
                  },
                  title: 'Sign Up',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
