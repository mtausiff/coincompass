
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tausifcoincompass/core/base/model/base_model.dart';
part 'login_response.g.dart';

@immutable
@JsonSerializable()
class LoginResponse extends BaseModel<LoginResponse>{
  LoginResponse({
    this.token,
  });

   final String? token;


  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}
