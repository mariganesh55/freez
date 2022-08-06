/// success : "OTP send your mail id"

class GenericResponse {
  GenericResponse({
    String? success,
  }) {
    _success = success;
  }

  GenericResponse.fromJson(dynamic json) {
    _success = json['success'];
  }
  String? _success;
  GenericResponse copyWith({
    String? success,
  }) =>
      GenericResponse(
        success: success ?? _success,
      );
  String? get success => _success;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    return map;
  }
}
