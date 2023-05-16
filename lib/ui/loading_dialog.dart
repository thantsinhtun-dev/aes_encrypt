import 'package:aes_encrypt/helper/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: _buildDialog(context),
    );
  }

  Widget _buildDialog(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
        child: Column(
          children:  [
            CircularProgressIndicator(color: context.appColors.colorPrimary),
            const SizedBox(height: 12),
            const Text("Please Wait")
          ],
        ),
      ),
    );
  }
}
