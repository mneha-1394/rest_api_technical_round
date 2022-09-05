
import 'dart:convert';

List<Technical> technicalFromJson(String str) => List<Technical>.from(json.decode(str).map((x) => Technical.fromJson(x)));

String technicalToJson(List<Technical> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Technical {
    Technical({
        required this.id,
        required this.label,
        required this.chartPeriodCode,
        required this.changePercent,
    });

    int id;
    String label;
    String chartPeriodCode;
    double changePercent;

    factory Technical.fromJson(Map<String, dynamic> json) => Technical(
        id: json["ID"],
        label: json["Label"],
        chartPeriodCode: json["ChartPeriodCode"],
        changePercent: json["ChangePercent"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "Label": label,
        "ChartPeriodCode": chartPeriodCode,
        "ChangePercent": changePercent,
    };
}
