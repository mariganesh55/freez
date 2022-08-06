// To parse this JSON data, do
//
//     final rolesModel = rolesModelFromJson(jsonString);

import 'dart:convert';

class RolesBaseModel {
  List<RolesModel>? list;
  RolesBaseModel({this.list});
  factory RolesBaseModel.fromJson(List<dynamic> parsedJson) {
    return RolesBaseModel(
        list: parsedJson.map((e) => RolesModel.fromJson(e)).toList());
  }
}

RolesModel rolesModelFromJson(String str) =>
    RolesModel.fromJson(json.decode(str).toList);

String rolesModelToJson(RolesModel data) => json.encode(data.toJson());

class RolesModel {
  RolesModel({
    this.professionalDetails,
  });

  ProfessionalDetails? professionalDetails;

  RolesModel.fromJson(Map<String, dynamic> json) {
    professionalDetails = json['professionalDetails'] != null
        ? new ProfessionalDetails.fromJson(json['professionalDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.professionalDetails != null) {
      data['professionalDetails'] = this.professionalDetails!.toJson();
    }
    return data;
  }
}

class ProfessionalDetails {
  GRNInnovation? gRNInnovation;
  RiteFoundation? riteFoundation;

  ProfessionalDetails({this.gRNInnovation, this.riteFoundation});

  ProfessionalDetails.fromJson(Map<String, dynamic> json) {
    gRNInnovation = json['GRN Innovation'] != null
        ? new GRNInnovation.fromJson(json['GRN Innovation'])
        : null;
    riteFoundation = json['Rite Foundation'] != null
        ? new RiteFoundation.fromJson(json['Rite Foundation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.gRNInnovation != null) {
      data['GRN Innovation'] = this.gRNInnovation!.toJson();
    }
    if (this.riteFoundation != null) {
      data['Rite Foundation'] = this.riteFoundation!.toJson();
    }
    return data;
  }
}

class GRNInnovation {
  int? industrial;
  int? government;
  int? domestic;
  int? distributers;
  int? dealers;
  int? technician;

  int? bPartner;

  GRNInnovation(
      {this.industrial,
      this.government,
      this.domestic,
      this.distributers,
      this.dealers,
      this.technician,
      this.bPartner});

  GRNInnovation.fromJson(Map<int, dynamic> json) {
    industrial = json['industrial'];
    government = json['government'];
    domestic = json['domestic'];
    distributers = json['distributers'];
    dealers = json['dealers'];
    technician = json['Technician'];
    technician = json['technician'];
    bPartner = json['B.partner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['industrial'] = this.industrial;
    data['government'] = this.government;
    data['domestic'] = this.domestic;
    data['distributers'] = this.distributers;
    data['dealers'] = this.dealers;
    data['Technician'] = this.technician;
    data['technician'] = this.technician;
    data['B.partner'] = this.bPartner;
    return data;
  }
}

class RiteFoundation {
  int? advisor;
  int? admin;
  int? institution;
  int? trust;
  int? association;
  int? students;
  int? public;
  int? jobSeakers;

  RiteFoundation(
      {this.advisor,
      this.admin,
      this.institution,
      this.trust,
      this.association,
      this.students,
      this.public,
      this.jobSeakers});

  RiteFoundation.fromJson(Map<int, dynamic> json) {
    advisor = json['advisor'];
    admin = json['admin'];
    institution = json['institution'];
    trust = json['trust'];
    association = json['association'];
    students = json['students'];
    public = json['public'];
    jobSeakers = json['job seakers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['advisor'] = this.advisor;
    data['admin'] = this.admin;
    data['institution'] = this.institution;
    data['trust'] = this.trust;
    data['association'] = this.association;
    data['students'] = this.students;
    data['public'] = this.public;
    data['job seakers'] = this.jobSeakers;
    return data;
  }
}
