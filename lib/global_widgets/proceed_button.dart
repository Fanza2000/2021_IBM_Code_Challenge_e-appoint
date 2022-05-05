import 'package:flutter/material.dart';

import '../themes/text_theme.dart';

class ProceedButton extends StatelessWidget {
  final String? title;
  final void Function()? onPress;
  final Color? buttonColor;
  final Size? size;
  const ProceedButton({
    @required this.size,
    @required this.title,
    @required this.onPress,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      height: size!.height * 0.06,
      minWidth: size!.width * 0.4,
      elevation: 0,
      child: Text(
        title!,
        style: kSub2HeadTextStyle.copyWith(
            color: Theme.of(context).primaryColorLight),
      ),
      color: buttonColor ?? Color(0xff035397),
      splashColor: buttonColor ?? Color.fromARGB(255, 3, 67, 123),
      highlightColor: buttonColor ?? Color(0xff035397),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size!.width * 0.05)),
    );
  }
}
