import 'package:aes_encrypt/data/models/app_model.dart';
import 'package:aes_encrypt/data/models/app_model_impl.dart';
import 'package:aes_encrypt/data/vos/otp_vo.dart';
import 'package:rxdart/rxdart.dart';

class AppController {
  AppController() {}

  AppModel appModel = AppModelImpl();

  final otpSubscriber = BehaviorSubject<OtpVO>();

  void requestOTP() {
    otpSubscriber.add(OtpVO());
    Future.delayed(const Duration(seconds: 1),(){
      appModel.getOtp().then((value) {
        otpSubscriber.add(value);
      }).catchError((error) {
        otpSubscriber.add(OtpVO(code: "404"));
      });
    });

  }
  void dispose(){
    otpSubscriber.close();
  }
}
