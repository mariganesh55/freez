import 'dart:convert';

List<profDetails?> prof_dataResponseFromJson(String str) =>
    List<profDetails?>.from(
        json.decode(str)!.map((x) => profDetails.fromJson(x)));

String User_registerToJson(List<profDetails> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class profDetails {
  List<String>? gRNInnovation;
  List<String>? riteFoundation;

  profDetails({this.gRNInnovation, this.riteFoundation});

  profDetails.fromJson(Map<String, dynamic> json) {
    gRNInnovation = json['GRN Innovation'].cast<String>();
    riteFoundation = json['Rite Foundation'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['GRN Innovation'] = this.gRNInnovation;
    data['Rite Foundation'] = this.riteFoundation;
    return data;
  }
}
