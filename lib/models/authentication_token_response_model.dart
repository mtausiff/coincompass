import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../core/base/model/base_model.dart';
import 'base_response_message_model.dart';

part 'authentication_token_response_model.g.dart';

@immutable
@JsonSerializable()
class AuthenticationTokenResponseModel
    extends BaseModel<AuthenticationTokenResponseModel> {
  final num? code;
  final Message? message;
  final Data? data;

  AuthenticationTokenResponseModel({
    this.code,
    this.message,
    this.data,
  });

  factory AuthenticationTokenResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationTokenResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AuthenticationTokenResponseModelToJson(this);

  @override
  fromJson(Map<String, dynamic> json) =>
      _$AuthenticationTokenResponseModelFromJson(json);
}

@immutable
@JsonSerializable()
class Data {
  final String? accessToken;
  final num? expiresIn;
  final String? tokenType;
  final String? refreshToken;

  Data({
    this.accessToken,
    this.expiresIn,
    this.tokenType,
    this.refreshToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
