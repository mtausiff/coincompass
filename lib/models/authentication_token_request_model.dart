/// userName : "guestuser@nft.com"
/// password : "heremynft@321"

class AuthenticationTokenRequestModel {
  AuthenticationTokenRequestModel({
      String? userName, 
      String? password,}){
    _userName = userName;
    _password = password;
}

  AuthenticationTokenRequestModel.fromJson(dynamic json) {
    _userName = json['userName'];
    _password = json['password'];
  }
  String? _userName;
  String? _password;
AuthenticationTokenRequestModel copyWith({  String? userName,
  String? password,
}) => AuthenticationTokenRequestModel(  userName: userName ?? _userName,
  password: password ?? _password,
);
  String? get userName => _userName;
  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userName'] = _userName;
    map['password'] = _password;
    return map;
  }

}