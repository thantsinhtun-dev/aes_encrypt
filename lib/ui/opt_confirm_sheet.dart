import 'package:aes_encrypt/helper/app_color.dart';
import 'package:aes_encrypt/helper/app_fonts.dart';
import 'package:aes_encrypt/ui/otp_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_field_container.dart';

class OtpConfirmSheet extends StatelessWidget {
  const OtpConfirmSheet({Key? key, required this.code}) : super(key: key);

  final String code;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery
            .of(context)
            .viewInsets
            .bottom + 34,
        top: 16,
        left: 16,
        right: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          // shrinkWrap: true,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "OTP ကုဒ်နံပါတ်အား ဖြည့်သွင်းပါ",
              style: context.appFonts.titleSmall(),
            ),
            Text(
              "တစ်ခါသုံးကုဒ်ဖြစ်သောကြောင့် တစ်မိနစ်အတွင်းဖြည့်သွင်းပါ",
              style: context.appFonts.bodySmall(),
            ),
            const SizedBox(height: 24),
            OtpFieldContainer(
              code: code,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                height: 46,
                onPressed: () {},
                color: context.appColors.colorPrimary,
                child: Text("အတည်ပြုမည်", style: context.appFonts.bodyMedium()?.copyWith(
                    color: context.appColors.colorWhite
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
