import '../../network/repository/api_repository.dart';
import '../vos/otp_vo.dart';

abstract class AppModel {
  late final ApiRepository apiRepository;

  Future<OtpVO> getOtp();

}
