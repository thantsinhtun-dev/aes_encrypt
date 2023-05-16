import 'package:aes_encrypt/data/vos/secret_key_vo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_vo.g.dart';

@JsonSerializable()
class OtpVO {
  @JsonKey(name: "code")
  String? code;
  @JsonKey(name: "meta")
  SecretKeyVO? secretKeyVO;

  OtpVO({this.code,this.secretKeyVO});

  factory OtpVO.fromJson(Map<String, dynamic> json) => _$OtpVOFromJson(json);
  Map<String,dynamic> toJson() => _$OtpVOToJson(this);

}