class GetRoleResponse {
  int? grnInnovation;
  int? riteFoundation;
  int? industrial;
  int? government;
  int? domestic;
  int? distributers;
  int? dealers;
  int? technician;
  int? investor;
  int? b;
  int? advisor;
  int? admin;
  int? institution;
  int? trust;
  int? association;
  int? students;
  int? public;
  int? jobSeakers;

  GetRoleResponse({
    this.grnInnovation,
    this.riteFoundation,
    this.industrial,
    this.government,
    this.domestic,
    this.distributers,
    this.dealers,
    this.technician,
    this.investor,
    this.b,
    this.advisor,
    this.admin,
    this.institution,
    this.trust,
    this.association,
    this.students,
    this.public,
    this.jobSeakers,
  });

  factory GetRoleResponse.fromJson(Map<String, dynamic> json) {
    return GetRoleResponse(
      grnInnovation: json['GRN Innovation'] as int?,
      riteFoundation: json['Rite Foundation'] as int?,
      industrial: json['industrial'] as int?,
      government: json['government'] as int?,
      domestic: json['domestic'] as int?,
      distributers: json['distributers'] as int?,
      dealers: json['dealers'] as int?,
      technician: json['Technician'] as int?,
      investor: json['Investor'] as int?,
      b: json['B.partner'] as int?,
      advisor: json['advisor'] as int?,
      admin: json['admin'] as int?,
      institution: json['institution'] as int?,
      trust: json['trust'] as int?,
      association: json['association'] as int?,
      students: json['students'] as int?,
      public: json['public'] as int?,
      jobSeakers: json['job seakers'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'GRN Innovation': grnInnovation,
        'Rite Foundation': riteFoundation,
        'industrial': industrial,
        'government': government,
        'domestic': domestic,
        'distributers': distributers,
        'dealers': dealers,
        'Technician': technician,
        'Investor': investor,
        'B': b,
        'advisor': advisor,
        'admin': admin,
        'institution': institution,
        'trust': trust,
        'association': association,
        'students': students,
        'public': public,
        'job seakers': jobSeakers,
      };
}
