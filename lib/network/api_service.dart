import 'package:aes_encrypt/data/vos/otp_vo.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://otp-request.onrender.com")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET("/get-otp")
  Future<OtpVO> getOtp();

}