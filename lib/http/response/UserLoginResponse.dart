/// _id : "629f0e950a7dfe1211f0d7a0"
/// username : "deena"
/// email : "falconthaya39@gmail.com"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyOWYwZTk1MGE3ZGZlMTIxMWYwZDdhMCIsImlhdCI6MTY1ODc2OTk2NCwiZXhwIjoxNjYxMzYxOTY0fQ.aSNrD0TJ_l75qAvXxY2FpXSJ36H_DDHXf0zQAL8CccE"

class UserLoginResponse {
  UserLoginResponse({
    String? id,
    String? username,
    String? email,
    String? token,
  }) {
    _id = id;
    _username = username;
    _email = email;
    _token = token;
  }

  UserLoginResponse.fromJson(dynamic json) {
    _id = json['_id'];
    _username = json['username'];
    _email = json['email'];
    _token = json['token'];
  }
  String? _id;
  String? _username;
  String? _email;
  String? _token;
  UserLoginResponse copyWith({
    String? id,
    String? username,
    String? email,
    String? token,
  }) =>
      UserLoginResponse(
        id: id ?? _id,
        username: username ?? _username,
        email: email ?? _email,
        token: token ?? _token,
      );
  String? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['token'] = _token;
    return map;
  }
}
