import 'dealer.dart';
import 'government.dart';

class GetAllTargetResponse {
  List<dynamic>? industrial;
  List<Government>? government;
  List<dynamic>? domestic;
  List<dynamic>? distributers;
  List<Dealer>? dealers;
  List<dynamic>? technician;
  List<dynamic>? investor;
  List<dynamic>? b;

  GetAllTargetResponse({
    this.industrial,
    this.government,
    this.domestic,
    this.distributers,
    this.dealers,
    this.technician,
    this.investor,
    this.b,
  });

  factory GetAllTargetResponse.fromJson(Map<String, dynamic> json) {
    return GetAllTargetResponse(
      industrial: json['industrial'] as List<dynamic>?,
      government: (json['government'] as List<dynamic>?)
          ?.map((e) => Government.fromJson(e as Map<String, dynamic>))
          .toList(),
      domestic: json['domestic'] as List<dynamic>?,
      distributers: json['distributers'] as List<dynamic>?,
      dealers: (json['dealers'] as List<dynamic>?)
          ?.map((e) => Dealer.fromJson(e as Map<String, dynamic>))
          .toList(),
      technician: json['Technician'] as List<dynamic>?,
      investor: json['Investor'] as List<dynamic>?,
      b: json['B.partner'] as List<dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'industrial': industrial,
        'government': government?.map((e) => e.toJson()).toList(),
        'domestic': domestic,
        'distributers': distributers,
        'dealers': dealers?.map((e) => e.toJson()).toList(),
        'Technician': technician,
        'Investor': investor,
        'B': b,
      };
}
