
import 'package:json_annotation/json_annotation.dart';

part 'secret_key_vo.g.dart';

@JsonSerializable()
class SecretKeyVO {
  @JsonKey(name: "secretKey")
  String? secretKey;

  SecretKeyVO(this.secretKey);


  factory SecretKeyVO.fromJson(Map<String, dynamic> json) => _$SecretKeyVOFromJson(json);
  Map<String,dynamic> toJson() => _$SecretKeyVOToJson(this);

}