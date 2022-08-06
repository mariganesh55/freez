/// email : "mariganeshthangam@gmail.com"
/// password : "1234567"
/// otp : 749694

class OtpVerificationResponse {
  OtpVerificationResponse({
    String? email,
    String? password,
    int? otp,
  }) {
    _email = email;
    _password = password;
    _otp = otp;
  }

  OtpVerificationResponse.fromJson(dynamic json) {
    _email = json['email'];
    _password = json['password'];
    _otp = json['otp'];
  }
  String? _email;
  String? _password;
  int? _otp;
  OtpVerificationResponse copyWith({
    String? email,
    String? password,
    int? otp,
  }) =>
      OtpVerificationResponse(
        email: email ?? _email,
        password: password ?? _password,
        otp: otp ?? _otp,
      );
  String? get email => _email;
  String? get password => _password;
  int? get otp => _otp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    map['password'] = _password;
    map['otp'] = _otp;
    return map;
  }
}
