// To parse this JSON data, do
//
//     final getUserResponse = getUserResponseFromJson(jsonString);

import 'dart:convert';

List<User_register> getUserResponseFromJson(String str) =>
    List<User_register>.from(
        json.decode(str).map((x) => User_register.fromJson(x)));

String User_registerToJson(List<User_register> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User_register {
  User_register({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.aadhar,
    required this.pan,
    required this.professional_details,
    // this.city,
    // this.dob,
    // this.imei,
    // this.lastscanned,
    this.status,
    this.profilepic,
    // required this.createdAt,
    // required this.updatedAt,
  });
  String? id;
  String? name;
  String? email;
  dynamic password;
  String? lastname;
  String? gender;
  String? phone;
//  String role;
  dynamic aadhar;
  dynamic pan;
  String professional_details;

  // dynamic designation;
  // dynamic address;
  // dynamic city;
  // dynamic dob;
  // dynamic imei;
  // dynamic lastscanned;
  dynamic status;
  dynamic profilepic;
  // DateTime createdAt;
  // DateTime updatedAt;

  factory User_register.fromJson(Map<String, dynamic> json) => User_register(
        id: json["_id"],
        name: json["firstname"],
        email: json["email"],
        password: json["password"],

        phone: json["phone"],
        aadhar: json["aadhar"],
        pan: json["pan"],
        professional_details: json["professional_details"],

        // role: json["role"],
        // designation: json["designation"],
        // address: json["address"],
        // city: json["city"],
        // dob: json["dob"],
        // imei: json["imei"],
        //    lastscanned: json["lastscanned"],
        status: json["status"],
        profilepic: json["profilepic"],
        //   createdAt: DateTime.parse(json["createdAt"]),
        //  updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "password": password,
        "lastname": lastname,
        "gender": gender,
        "phone": phone,
        //   "role": role,
        "aadhar": aadhar,
        "pan": pan,
        "professional_details": professional_details,

        // "designation": designation,
        // "address": address,
        // "city": city,
        // "dob": dob,
        // "imei": imei,
        // "lastscanned": lastscanned,
        "status": status,
        "profilepic": profilepic,
        // "createdAt": createdAt.toIso8601String(),
        // "updatedAt": updatedAt.toIso8601String(),
      };
}
