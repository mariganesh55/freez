class SignUpmodel {
  String? name;
  String? email;
  String? password;
  String? aadhar;
  String? phone;
  String? pan;
  String? professionalDetails;

  SignUpmodel(
      {this.name,
      this.email,
      this.password,
      this.aadhar,
      this.phone,
      this.pan,
      this.professionalDetails});

  SignUpmodel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    aadhar = json['aadhar'];
    phone = json['phone'];
    pan = json['pan'];
    professionalDetails = json['professionalDetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
