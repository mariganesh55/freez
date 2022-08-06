class GetRoles {
  int? grnInnovation;
  int? riteFoundation;
  int? industrial;
  int? government;
  int? domestic;
  int? distributers;
  int? dealers;
  int? technician;
  int? investor;
  int? bPartner;
  int? advisor;
  int? admin;
  int? institution;
  int? trust;
  int? association;
  int? students;
  int? public;
  int? jobSeakers;

  GetRoles(
      {this.grnInnovation,
      this.riteFoundation,
      this.industrial,
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

  GetRoles.fromJson(Map<String, dynamic> json) {
    this.grnInnovation = json["GRN Innovation"];
    this.riteFoundation = json["Rite Foundation"];
    this.industrial = json["industrial"];
    this.government = json["government"];
    this.domestic = json["domestic"];
    this.distributers = json["distributers"];
    this.dealers = json["dealers"];
    this.technician = json["Technician"];
    this.investor = json["Investor"];
    this.bPartner = json["B.partner"];
    this.advisor = json["advisor"];
    this.admin = json["admin"];
    this.institution = json["institution"];
    this.trust = json["trust"];
    this.association = json["association"];
    this.students = json["students"];
    this.public = json["public"];
    this.jobSeakers = json["job seakers"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["GRN Innovation"] = this.grnInnovation;
    data["Rite Foundation"] = this.riteFoundation;
    data["industrial"] = this.industrial;
    data["government"] = this.government;
    data["domestic"] = this.domestic;
    data["distributers"] = this.distributers;
    data["dealers"] = this.dealers;
    data["Technician"] = this.technician;
    data["Investor"] = this.investor;
    data["B.partner"] = this.bPartner;
    data["advisor"] = this.advisor;
    data["admin"] = this.admin;
    data["institution"] = this.institution;
    data["trust"] = this.trust;
    data["association"] = this.association;
    data["students"] = this.students;
    data["public"] = this.public;
    data["job seakers"] = this.jobSeakers;
    return data;
  }
}
