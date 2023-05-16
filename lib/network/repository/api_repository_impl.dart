import 'package:aes_encrypt/data/models/app_model_impl.dart';
import 'package:aes_encrypt/data/vos/otp_vo.dart';
import 'package:aes_encrypt/network/repository/api_repository.dart';
import 'package:dio/dio.dart';

import '../api_service.dart';


const String HEADER_ACCEPT = "Accept";
const String HEADER_CONTENT_TYPE = "Content-Type";
const String APPLICATION_JSON = "application/json";

class ApiRepositoryImpl implements ApiRepository {
  late ApiService apiService;

  static final ApiRepositoryImpl _singleton = ApiRepositoryImpl._internal();

  factory ApiRepositoryImpl() {
    return _singleton;
  }

  ApiRepositoryImpl._internal() {
    final dio = Dio();
    // dio.interceptors.add(JsonResponseConverter());
    // dio.interceptors.add(PrettyDioLogger());
    dio.options = BaseOptions(headers: {HEADER_ACCEPT: APPLICATION_JSON, HEADER_CONTENT_TYPE: APPLICATION_JSON});
    apiService = ApiService(dio);
  }

  @override
  Future<OtpVO> getOtp() {
    return apiService.getOtp();
  }

}