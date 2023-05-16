import 'package:aes_encrypt/controller/AppController.dart';
import 'package:aes_encrypt/helper/app_color.dart';
import 'package:aes_encrypt/ui/snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../extensions.dart';
import 'loading_dialog.dart';
import 'opt_confirm_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _homeController = AppController();

  bool showLoading = false;
  @override
  void initState() {
    super.initState();

    _homeController.otpSubscriber.listen((value) {
      if(showLoading){
        Navigator.pop(context);
      }
      if (value.code == null) {
        _showLoading(context);
        showLoading = true;
      } else {
        showLoading = false;
        if (value.code == "404") {
          _showSnackBar(context, "Error!", "Somethings wrong!");
        } else {
          String code = decryptAESECB(value.code ?? "", value.secretKeyVO?.secretKey ?? "");
          _showSnackBar(context, "OTP", code);
          _showBottomSheet(context, code);
        }
      }
    });
  }
  @override
  void dispose() {
    super.dispose();
    _homeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: MaterialButton(
            onPressed: () {
              _homeController.requestOTP();
            },
            color: context.appColors.colorPrimary,
            textColor: context.appColors.colorWhite,
            child: const Text("OTP တောင်းဆိုမည်"),
          ),
        ),
      ),
    );
  }
}

void _showSnackBar(context, String title, String otp) {
  showTopSnackBar(
      Overlay.of(context),
      SnackBarTitle(
        title: title,
        otpCode: otp,
      ));
}

void _showLoading(context) {
  showDialog(
      context: context,
      builder: (builder) {
        return const LoadingDialog();
      });
}

void _showBottomSheet(context, String code) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return OtpConfirmSheet(code: code);
      });
}
