/// _id : "62deeab543dd220ee48647c0"
/// name : "ganesh"
/// email : "ganesh@gmail.com"
/// otp : 713734
/// userId : "2484767157"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyZGVlYWI1NDNkZDIyMGVlNDg2NDdjMCIsImlhdCI6MTY1ODc3NjI0NiwiZXhwIjoxNjYxMzY4MjQ2fQ.JQzJkeKP8_ChM3TrNLQ-ImWzoohrtwnJMfpYEAe5xaU"

class UserRegisterResponse {
  UserRegisterResponse({
    String? id,
    String? name,
    String? email,
    int? otp,
    String? userId,
    String? token,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _otp = otp;
    _userId = userId;
    _token = token;
  }

  UserRegisterResponse.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _email = json['email'];
    _otp = json['otp'];
    _userId = json['userId'];
    _token = json['token'];
  }
  String? _id;
  String? _name;
  String? _email;
  int? _otp;
  String? _userId;
  String? _token;
  UserRegisterResponse copyWith({
    String? id,
    String? name,
    String? email,
    int? otp,
    String? userId,
    String? token,
  }) =>
      UserRegisterResponse(
        id: id ?? _id,
        name: name ?? _name,
        email: email ?? _email,
        otp: otp ?? _otp,
        userId: userId ?? _userId,
        token: token ?? _token,
      );
  String? get id => _id;
  String? get name => _name;
  String? get email => _email;
  int? get otp => _otp;
  String? get userId => _userId;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['otp'] = _otp;
    map['userId'] = _userId;
    map['token'] = _token;
    return map;
  }
}
