import 'package:aes_encrypt/helper/app_color.dart';
import 'package:aes_encrypt/helper/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarTitle extends StatelessWidget {
  const SnackBarTitle({Key? key, required this.otpCode, required this.title}) : super(key: key);

  final String title;
  final String otpCode;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.appColors.colorGray,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             Text(title,style:  context.appFonts.bodyLarge(),),
            const SizedBox(height: 8),
            Text(otpCode)
          ],

        ),
      ),
    );
  }
}