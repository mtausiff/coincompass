/// code : 200
/// message : {"type":"1","title":"Başarılı","content":"erişim token ayrıntıları başarıyla getirildi.","action":""}
/// data : {"accessToken":"eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndWVzdHVzZXJAbmZ0LmNvbSIsImlhdCI6MTY5NTczNTM5OSwiZXhwIjoxNjk1NzM4OTk5fQ.VpHP8Qgqk3o7W6epvNvFwI8e9-FDttyvNaNFrm36WYw","expiresIn":3600,"tokenType":"Bearer","refreshToken":"eyJhbGciOiJIUzI1NiJ9"}

class AuthenticationTokenResponseModel {
  AuthenticationTokenResponseModel({
      num? code, 
      Message? message, 
      Data? data,}){
    _code = code;
    _message = message;
    _data = data;
}

  AuthenticationTokenResponseModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'] != null ? Message.fromJson(json['message']) : null;
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? _code;
  Message? _message;
  Data? _data;
AuthenticationTokenResponseModel copyWith({  num? code,
  Message? message,
  Data? data,
}) => AuthenticationTokenResponseModel(  code: code ?? _code,
  message: message ?? _message,
  data: data ?? _data,
);
  num? get code => _code;
  Message? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    if (_message != null) {
      map['message'] = _message?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// accessToken : "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndWVzdHVzZXJAbmZ0LmNvbSIsImlhdCI6MTY5NTczNTM5OSwiZXhwIjoxNjk1NzM4OTk5fQ.VpHP8Qgqk3o7W6epvNvFwI8e9-FDttyvNaNFrm36WYw"
/// expiresIn : 3600
/// tokenType : "Bearer"
/// refreshToken : "eyJhbGciOiJIUzI1NiJ9"

class Data {
  Data({
      String? accessToken, 
      num? expiresIn, 
      String? tokenType, 
      String? refreshToken,}){
    _accessToken = accessToken;
    _expiresIn = expiresIn;
    _tokenType = tokenType;
    _refreshToken = refreshToken;
}

  Data.fromJson(dynamic json) {
    _accessToken = json['accessToken'];
    _expiresIn = json['expiresIn'];
    _tokenType = json['tokenType'];
    _refreshToken = json['refreshToken'];
  }
  String? _accessToken;
  num? _expiresIn;
  String? _tokenType;
  String? _refreshToken;
Data copyWith({  String? accessToken,
  num? expiresIn,
  String? tokenType,
  String? refreshToken,
}) => Data(  accessToken: accessToken ?? _accessToken,
  expiresIn: expiresIn ?? _expiresIn,
  tokenType: tokenType ?? _tokenType,
  refreshToken: refreshToken ?? _refreshToken,
);
  String? get accessToken => _accessToken;
  num? get expiresIn => _expiresIn;
  String? get tokenType => _tokenType;
  String? get refreshToken => _refreshToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['accessToken'] = _accessToken;
    map['expiresIn'] = _expiresIn;
    map['tokenType'] = _tokenType;
    map['refreshToken'] = _refreshToken;
    return map;
  }

}

/// type : "1"
/// title : "Başarılı"
/// content : "erişim token ayrıntıları başarıyla getirildi."
/// action : ""

class Message {
  Message({
      String? type, 
      String? title, 
      String? content, 
      String? action,}){
    _type = type;
    _title = title;
    _content = content;
    _action = action;
}

  Message.fromJson(dynamic json) {
    _type = json['type'];
    _title = json['title'];
    _content = json['content'];
    _action = json['action'];
  }
  String? _type;
  String? _title;
  String? _content;
  String? _action;
Message copyWith({  String? type,
  String? title,
  String? content,
  String? action,
}) => Message(  type: type ?? _type,
  title: title ?? _title,
  content: content ?? _content,
  action: action ?? _action,
);
  String? get type => _type;
  String? get title => _title;
  String? get content => _content;
  String? get action => _action;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['title'] = _title;
    map['content'] = _content;
    map['action'] = _action;
    return map;
  }

}