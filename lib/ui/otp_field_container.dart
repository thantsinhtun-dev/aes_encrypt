import 'package:flutter/cupertino.dart';

import '../helper/app_color.dart';
import 'otp_field.dart';

class OtpFieldContainer extends StatefulWidget {
  const OtpFieldContainer({Key? key, required this.code}) : super(key: key);

  final String code;

  @override
  State<OtpFieldContainer> createState() => _OtpFieldContainerState();
}

class _OtpFieldContainerState extends State<OtpFieldContainer> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();
  BorderColor borderColor = BorderColor.normalBorder;

  String inputOtp = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OtpField(
          controller: _fieldOne,
          autoFocus: true,
          borderColor: borderColor.color,
          onChange: () {

            checkContainer();
          },
        ), // auto focus
        OtpField(
            controller: _fieldTwo,
            autoFocus: false,
            borderColor: borderColor.color,
            onChange: () {
              checkContainer();
            }), // auto focus
        OtpField(
            controller: _fieldThree,
            autoFocus: false,
            borderColor: borderColor.color,
            onChange: () {
              checkContainer();
            }), // auto focus
        OtpField(
            controller: _fieldFour,
            autoFocus: false,
            borderColor: borderColor.color,
            onChange: () {
              checkContainer();
            }),
        OtpField(
            controller: _fieldFive,
            autoFocus: false,
            borderColor: borderColor.color,
            onChange: () {
              checkContainer();
            }), // auto focus
        OtpField(
            controller: _fieldSix,
            autoFocus: false,
            borderColor: borderColor.color,
            onChange: () {
              checkContainer();
            }),
      ],
    );
  }

  void checkContainer() {
    String inputOtp = "";
    inputOtp += _fieldOne.text;
    inputOtp += _fieldTwo.text;
    inputOtp += _fieldThree.text;
    inputOtp += _fieldFour.text;
    inputOtp += _fieldFive.text;
    inputOtp += _fieldSix.text;

    if(inputOtp.length < 6){
      changeBorderColor(BorderColor.normalBorder);
    }else {
      if (inputOtp == widget.code){
        changeBorderColor(BorderColor.correctOtpBorder);
      }else {
        changeBorderColor(BorderColor.incorrectOtpBorder);
      }
    }

 }
 void changeBorderColor(BorderColor color){
    setState(() {
      borderColor = color;
    });
 }
}

enum BorderColor {

  normalBorder(colorGray),
  correctOtpBorder(colorAccentLight),
  incorrectOtpBorder(colorNotTakenLight);

  const BorderColor(this.color);
  final Color color;
}
