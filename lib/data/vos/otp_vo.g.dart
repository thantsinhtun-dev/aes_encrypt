// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVO _$OtpVOFromJson(Map<String, dynamic> json) => OtpVO(
      code: json['code'] as String?,
      secretKeyVO: json['meta'] == null
          ? null
          : SecretKeyVO.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtpVOToJson(OtpVO instance) => <String, dynamic>{
      'code': instance.code,
      'meta': instance.secretKeyVO,
    };
