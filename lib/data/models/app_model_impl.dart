import 'package:aes_encrypt/data/vos/otp_vo.dart';
import 'package:aes_encrypt/network/repository/api_repository.dart';
import 'package:aes_encrypt/network/repository/api_repository_impl.dart';

import 'app_model.dart';

class AppModelImpl implements AppModel{
  static final AppModelImpl _singleton = AppModelImpl._internal();

  factory AppModelImpl() {
    return _singleton;
  }
  AppModelImpl._internal();

  @override
  Future<OtpVO> getOtp() {
    return apiRepository.getOtp();
  }

  @override
  ApiRepository apiRepository = ApiRepositoryImpl();
}