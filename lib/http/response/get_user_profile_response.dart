class GetUserProfileResponse {
  String? name;
  String? email;
  int? userId;
  String? phone;
  String? aadhar;
  String? pan;
  String? professionalDetails;
  String? gender;
  String? dob;
  String? location;
  int? age;
  String? address;
  String? img;
  String? registerDate;
  String? expireDate;

  GetUserProfileResponse({
    this.name,
    this.email,
    this.userId,
    this.phone,
    this.aadhar,
    this.pan,
    this.professionalDetails,
    this.gender,
    this.dob,
    this.location,
    this.age,
    this.address,
    this.img,
    this.registerDate,
    this.expireDate,
  });

  factory GetUserProfileResponse.fromJson(Map<String, dynamic> json) {
    return GetUserProfileResponse(
      name: json['name'] as String?,
      email: json['email'] as String?,
      userId: json['userId'] as int?,
      phone: json['phone'] as String?,
      aadhar: json['aadhar'] as String?,
      pan: json['pan'] as String?,
      professionalDetails: json['professionalDetails'] as String?,
      gender: json['gender'] as String?,
      dob: json['DOB'] as String?,
      location: json['location'] as String?,
      age: json['age'] as int?,
      address: json['address'] as String?,
      img: json['img'] as String?,
      registerDate: json['registerDate'] as String?,
      expireDate: json['expireDate'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'userId': userId,
        'phone': phone,
        'aadhar': aadhar,
        'pan': pan,
        'professionalDetails': professionalDetails,
        'gender': gender,
        'DOB': dob,
        'location': location,
        'age': age,
        'address': address,
        'img': img,
        'registerDate': registerDate,
        'expireDate': expireDate,
      };
}
