import 'package:aes_encrypt/data/vos/otp_vo.dart';

abstract class ApiRepository {
  Future<OtpVO> getOtp();
}