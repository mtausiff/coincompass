import 'package:json_annotation/json_annotation.dart';
import 'package:tausifcoincompass/core/base/model/base_model.dart';

part 'authentication_token_request_model.g.dart';

@JsonSerializable()
class AuthenticationTokenRequestModel extends BaseModel<AuthenticationTokenRequestModel> {
  String? _userName;
  String? _password;
  AuthenticationTokenRequestModel({
      String? userName, 
      String? password,}){
    _userName = userName;
    _password = password;
}

  factory AuthenticationTokenRequestModel.fromJson(Map<String, dynamic> json) => _$AuthenticationTokenRequestModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$AuthenticationTokenRequestModelToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$AuthenticationTokenRequestModelFromJson(json);

}