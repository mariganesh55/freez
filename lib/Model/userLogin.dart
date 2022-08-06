class UserLogin {
  String? sId;
  String? username;
  String? email;
  String? token;

  UserLogin({this.sId, this.username, this.email, this.token});

  UserLogin.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    username = json['username'];
    email = json['email'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['token'] = this.token;
    return data;
  }
}
