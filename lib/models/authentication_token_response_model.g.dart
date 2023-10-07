// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_token_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationTokenResponseModel _$AuthenticationTokenResponseModelFromJson(
        Map<String, dynamic> json) =>
    AuthenticationTokenResponseModel(
      code: json['code'] as num?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthenticationTokenResponseModelToJson(
        AuthenticationTokenResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      accessToken: json['accessToken'] as String?,
      expiresIn: json['expiresIn'] as num?,
      tokenType: json['tokenType'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
      'tokenType': instance.tokenType,
      'refreshToken': instance.refreshToken,
    };
