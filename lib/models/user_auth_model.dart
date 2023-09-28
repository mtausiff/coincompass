import 'package:json_annotation/json_annotation.dart';
import 'package:tausifcoincompass/core/base/model/base_model.dart';

part 'user_auth_model.g.dart';

@JsonSerializable()
class UserAuthModel extends BaseModel<UserAuthModel>{
  String? email;
  String? password;

  UserAuthModel({this.email, this.password});

  factory UserAuthModel.fromJson(Map<String, dynamic> json) => _$UserAuthModelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserAuthModelToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$UserAuthModelFromJson(json);

}
