import 'package:aes_encrypt/helper/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpField extends StatelessWidget {
  const OtpField({Key? key, required this.controller, required this.autoFocus, required this.borderColor, required this.onChange}) : super(key: key);
  final TextEditingController controller;
  final bool autoFocus;
  final Function onChange;

  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: context.appColors.colorPrimary,
        decoration:  InputDecoration(
            focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor),
            ),
            counterText: '',
            hintStyle: const TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }else {
            FocusScope.of(context).previousFocus();
          }
          onChange();
        },
      ),
    );
  }
}
