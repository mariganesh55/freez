import 'dart:convert';

List<UserRegister> getUserResponseFromJson(String str) =>
    List<UserRegister>.from(
        jsonDecode(str).map((x) => UserRegister.fromJson(x)));

String getUserResponseToJson(List<UserRegister> data) =>
    jsonEncode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserRegister {
  String? id;

  String? name;
  String? email;
  String? password;
  String? aadhar;
  String? phone;
  String? pan;
  String? professionalDetails;

  UserRegister(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.aadhar,
      required this.phone,
      required this.pan,
      required this.professionalDetails});

  UserRegister.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    aadhar = json['aadhar'];
    phone = json['phone'];
    pan = json['pan'];
    professionalDetails = json['professionalDetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['aadhar'] = this.aadhar;
    data['phone'] = this.phone;
    data['pan'] = this.pan;
    data['professionalDetails'] = this.professionalDetails;
    return data;
  }
}
