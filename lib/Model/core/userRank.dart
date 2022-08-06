class Example {
  List<dynamic>? industrial;
  List<Government>? government;
  List<dynamic>? domestic;
  List<dynamic>? distributers;
  List<Dealers>? dealers;
  List<dynamic>? technician;
  List<dynamic>? investor;
  List<dynamic>? bPartner;
  List<dynamic>? advisor;
  List<dynamic>? admin;
  List<dynamic>? institution;
  List<dynamic>? trust;
  List<dynamic>? association;
  List<dynamic>? students;
  List<dynamic>? public;
  List<dynamic>? jobSeakers;

  Example(
      {this.industrial,
      this.government,
      this.domestic,
      this.distributers,
      this.dealers,
      this.technician,
      this.investor,
      this.bPartner,
      this.advisor,
      this.admin,
      this.institution,
      this.trust,
      this.association,
      this.students,
      this.public,
      this.jobSeakers});

  Example.fromJson(Map<String, dynamic> json) {
    this.industrial = json["industrial"] ?? [];
    this.government = json["government"] == null
        ? null
        : (json["government"] as List)
            .map((e) => Government.fromJson(e))
            .toList();
    this.domestic = json["domestic"] ?? [];
    this.distributers = json["distributers"] ?? [];
    this.dealers = json["dealers"] == null
        ? null
        : (json["dealers"] as List).map((e) => Dealers.fromJson(e)).toList();
    this.technician = json["Technician"] ?? [];
    this.investor = json["Investor"] ?? [];
    this.bPartner = json["B.partner"] ?? [];
    this.advisor = json["advisor"] ?? [];
    this.admin = json["admin"] ?? [];
    this.institution = json["institution"] ?? [];
    this.trust = json["trust"] ?? [];
    this.association = json["association"] ?? [];
    this.students = json["students"] ?? [];
    this.public = json["public"] ?? [];
    this.jobSeakers = json["job seakers"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.industrial != null) data["industrial"] = this.industrial;
    if (this.government != null)
      data["government"] = this.government?.map((e) => e.toJson()).toList();
    if (this.domestic != null) data["domestic"] = this.domestic;
    if (this.distributers != null) data["distributers"] = this.distributers;
    if (this.dealers != null)
      data["dealers"] = this.dealers?.map((e) => e.toJson()).toList();
    if (this.technician != null) data["Technician"] = this.technician;
    if (this.investor != null) data["Investor"] = this.investor;
    if (this.bPartner != null) data["B.partner"] = this.bPartner;
    if (this.advisor != null) data["advisor"] = this.advisor;
    if (this.admin != null) data["admin"] = this.admin;
    if (this.institution != null) data["institution"] = this.institution;
    if (this.trust != null) data["trust"] = this.trust;
    if (this.association != null) data["association"] = this.association;
    if (this.students != null) data["students"] = this.students;
    if (this.public != null) data["public"] = this.public;
    if (this.jobSeakers != null) data["job seakers"] = this.jobSeakers;
    return data;
  }
}

class Dealers {
  int? id;
  String? name;
  String? email;
  int? target;

  Dealers({this.id, this.name, this.email, this.target});

  Dealers.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.email = json["email"];
    this.target = json["target"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["email"] = this.email;
    data["target"] = this.target;
    return data;
  }
}

class Government {
  int? id;
  String? name;
  String? email;
  int? target;

  Government({this.id, this.name, this.email, this.target});

  Government.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.email = json["email"];
    this.target = json["target"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["email"] = this.email;
    data["target"] = this.target;
    return data;
  }
}
