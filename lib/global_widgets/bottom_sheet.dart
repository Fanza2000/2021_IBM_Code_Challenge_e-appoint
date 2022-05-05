import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'input_text_feild.dart';
import 'proceed_button.dart';

class BottomSheetContent extends StatelessWidget {
  final Function? onSubmit;
  final void Function()? onTap;
  final String? buttonText;
  final TextEditingController? dateController;

  const BottomSheetContent(
      {Key? key,
      this.onSubmit,
      this.buttonText,
      this.dateController,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: Get.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: onTap,
            child: InputTextFormField(
              hintText: 'Date',
              tController: dateController,
              contentTextColor: Theme.of(context).primaryColorDark,
              width: Get.width * 0.6,
              isEnabled: false,
            ),
          ),
          SizedBox(height: Get.height * 0.05),
          ProceedButton(
            size: Get.size,
            title: buttonText,
            buttonColor: Theme.of(context).primaryColor.withOpacity(0.9),
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
