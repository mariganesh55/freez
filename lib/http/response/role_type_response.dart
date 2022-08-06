class RoleTypeResponse {
  List<String>? grnInnovation;
  List<String>? riteFoundation;

  RoleTypeResponse({this.grnInnovation, this.riteFoundation});

  factory RoleTypeResponse.fromJson(Map<String, dynamic> json) {
    return RoleTypeResponse(
      grnInnovation: json['GRN Innovation'] as List<String>?,
      riteFoundation: json['Rite Foundation'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'GRN Innovation': grnInnovation,
        'Rite Foundation': riteFoundation,
      };
}
