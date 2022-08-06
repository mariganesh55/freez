import 'dart:convert';

List<GetReportData> getReportDataFromJson(String str) =>
    List<GetReportData>.from(
        json.decode(str).map((x) => GetReportData.fromJson(x)));

String getReportDataToJson(List<GetReportData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetReportData {
  GetReportData({
    this.name,
    this.date,
    this.image,
  });

  String? name;
  String? date;
  dynamic image;

  factory GetReportData.fromJson(Map<String, dynamic> json) => GetReportData(
        name: json["name"],
        date: json["date"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "date": date,
        "image": image,
      };
}

class ImageClass {
  ImageClass();

  factory ImageClass.fromJson(Map<String, dynamic> json) => ImageClass();

  Map<String, dynamic> toJson() => {};
}
