class ForgotPasswordResponse {
  int? id;
  String? email;
  int? otpvalue;
  String? updatedAt;
  String? createdAt;

  ForgotPasswordResponse({
    this.id,
    this.email,
    this.otpvalue,
    this.updatedAt,
    this.createdAt,
  });

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) {
    return ForgotPasswordResponse(
      id: json['id'] as int?,
      email: json['email'] as String?,
      otpvalue: json['otpvalue'] as int?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'otpvalue': otpvalue,
        'updatedAt': updatedAt,
        'createdAt': createdAt,
      };
}
